class MessagesController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @message = Message.new(message_params)
    @message.group = @group
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @group,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
      redirect_to group_path(@group)
    else
      render "group/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

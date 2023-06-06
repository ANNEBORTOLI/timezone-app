class ConnectionsController < ApplicationController
  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new(connection_params)
    if @connection.save
      redirect_to @connection
    else
      render :new
    end
  end

  def destroy
    @connection = Connection.find(params[:id])
    @connection.destroy
    redirect_to @user
  end

  private

  def connection_params
    params.require(:connection).permit(:user_id, :group_id)
  end
end

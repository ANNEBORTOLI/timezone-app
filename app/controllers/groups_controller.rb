class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @groups = Group.all
  end

  def show
    @message = Message.new
  end

  def new
    @connections = current_user.all_contacts
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    contacts = @group.contact_ids
    array = params[:group][:contact_ids]
    array.each_with_index do |member, index|
      contacts.push(member.to_i) if index > 0
    end
    if @group.save
      redirect_to group_path(@group), notice: 'Group was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @selected = @group.contact_ids
    @selected_for_tomselect = User.where(id: @selected)
    @connections = current_user.all_contacts
  end

  def update
    array = params[:group][:contact_ids]
    new_ids = array.map { |element| element.to_i unless element == "" }.compact

    if @group.update(group_params.merge(contact_ids: new_ids))
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @group.destroy
    redirect_to @user, notice: 'Group was successfully destroyed.'
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:title, :contact_ids)
  end
end

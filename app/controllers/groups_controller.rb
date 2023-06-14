class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @groups = Group.all
  end

  def show
    @message = Message.new
    @availabilities = [current_user]
    @group.contact_ids.each do |member|
      user = User.find(member)
      if current_user != user
        user_offset = current_user.offset - user.offset
        user.working_hour_start = adjust_to_24_hours(user.working_hour_start + user_offset)
        user.working_hour_end = adjust_to_24_hours(user.working_hour_end + user_offset)
        @availabilities.push(user)
      end
    end
    if current_user != @group.user
      @availabilities.push(@group.user)
    end
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
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to root_path, notice: 'Group was successfully destroyed.'
  end

  def adjust_to_24_hours(hour)
    if hour > 23
      hour -= 24
    elsif hour.negative?
      hour += 24
    end
    hour
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:title, :contact_ids)
  end
end

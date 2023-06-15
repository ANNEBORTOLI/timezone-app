class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(current_user.id)
    @contact = User.find(params[:id])
    # Adjust offset only for contact timezone
    user_offset = current_user.offset - @contact.offset
    @contact.working_hour_start = adjust_to_24_hours(@contact.working_hour_start + user_offset)
    @contact.working_hour_end = adjust_to_24_hours(@contact.working_hour_end + user_offset)

    # Adjust offset for all conections
    @connections = Connection.where(user: current_user)
    @groups = Group.where(user: current_user)
    @availabilities = [current_user]
    @connections.each do |connection|
      user_offset = current_user.offset - connection.contact.offset
      connection.contact.working_hour_start = adjust_to_24_hours(connection.contact.working_hour_start + user_offset)
      connection.contact.working_hour_end = adjust_to_24_hours(connection.contact.working_hour_end + user_offset)
      @availabilities.push(connection.contact)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.nil?
      redirect_to root_path, alert: "User not found!"
    end

    if @user.update(user_params)
      redirect_to url_from(@user) || root_url
      # redirect_to @user, notice: "User was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "Account was successfully destroyed.", status: :see_other
  end

  def profile
    @user = User.find(current_user.id)
    @connections = Connection.where(user: current_user)
    @groups = Group.where(user: current_user)
    @other_groups = Group.where("contact_ids @> ?", "{ #{current_user.id} }")
    @availabilities = [current_user]
    @connections.each do |connection|
      user_offset = current_user.offset - connection.contact.offset
      connection.contact.working_hour_start = adjust_to_24_hours(connection.contact.working_hour_start + user_offset)
      connection.contact.working_hour_end = adjust_to_24_hours(connection.contact.working_hour_end + user_offset)
      @availabilities.push(connection.contact)
    end
  end

  # Methods to convert timezones
  def set_connections_availability
    @connections = Connection.where(user: current_user)
    @availabilities = [current_user]
    @connections.each do |connection|
      user_offset = current_user.offset - connection.contact.offset
      connection.contact.working_hour_start = adjust_to_24_hours(connection.contact.working_hour_start + user_offset)
      connection.contact.working_hour_end = adjust_to_24_hours(connection.contact.working_hour_end + user_offset)
      @availabilities.push(connection.contact)
    end
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

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :working_hour_start, :working_hour_end,
      :timezone, :phone, :latitude, :longitude, :address, :offset)
  end
end

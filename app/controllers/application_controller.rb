class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActionController::Redirecting::UnsafeRedirectError do
    redirect_to root_url, allow_other_host: true
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :city, :country, :working_hour_start, :working_hour_end, :timezone, :phone, :latitude, :longitude ])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :city, :country, :working_hour_start, :working_hour_end, :timezone, :phone, :latitude, :longitude ])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :resource_name, :resource, :devise_mapping, :resource_class, :user_details_empty

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def resource_class
    devise_mapping.to
  end

  def after_sign_in_path_for(resource)
    user_pages_edit_user_details_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :dob
    end

  private

    def user_details_empty
      if current_user.fullname.nil? || current_user.address.nil? || current_user.pincode.nil? || current_user.city.nil? || current_user.state.nil? || current_user.gender.nil?
        true
      end
    end


end

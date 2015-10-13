class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	before_action :configure_permitted_parameters, if: :devise_controller?
  	
  	unless Rails.env.development?
  	protect_from_forgery with: :exception
  	end


  	protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar, :surname, :country, :street_address, :city, :zip_code, :money) }
    end
end

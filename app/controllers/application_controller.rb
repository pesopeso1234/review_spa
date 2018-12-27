class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,  :user_name, :kana_name, :gender, :age, :area_id, :email, :password])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nickname,  :user_name, :kana_name, :gender, :age, :area_id, :email, :password])
    end
end

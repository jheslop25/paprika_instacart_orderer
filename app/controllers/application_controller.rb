# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(
        :email, :password, :current_password, :paprika_email,
        :paprika_password, :instacart_email, :instacart_password,
        :instacart_default_store
      )
    end
  end
end

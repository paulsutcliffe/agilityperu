class Usuarios::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:nombre, :apellido, :direccion, :telefono, :ciudad, :pais,
             :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:nombre, :apellido, :telefono, :direccion, :ciudad, :pais, :email, :password, :password_confirmation, :current_password)
    end
  end
end

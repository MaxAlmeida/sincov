# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json


  def create
  resource = User.find_for_database_authentication(email: params[:user][:email])
  return invalid_login_attempt unless resource

  if resource.valid_password?(params[:user][:password]) and resource
    sign_in(resource_name, resource)
    set_flash_message!(:notice, :signed_in)
    puts("logiin")
    puts(flash[:notice])
    redirect_to root_path, success: "Login feito com sucesso"
  else
    invalid_login_attempt
  end
  end


 def invalid_login_attempt
   set_flash_message(:alert, :invalid)
   puts(flash[:alert])
  render json: flash[:alert], status: 401
end

end

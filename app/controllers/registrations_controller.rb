class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:pseudo, :address, :phone, :avatar, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:pseudo, :address, :phone, :avatar, :email, :password, :password_confirmation, :current_password, :remove_avatar)
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
      edit_user_registration_path
    end


end
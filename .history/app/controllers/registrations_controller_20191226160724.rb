class RegistrationsController < Devise::RegistrationsController
# protect cross site request forgery attacks with exception
	protect_from_forgery with: 
	private


	def sign_up_params
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
	end

end

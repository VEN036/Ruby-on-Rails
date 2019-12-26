class RegistrationsController < Devise::RegistrationsController
# protect cross site request forgery attacks with exception
	protect_from_forgery with: :exception

# action path from rails admin_path authentication
	before_action :reload_rails_admin, if: :rails_admin_path?
	
# Before action rails admin functionality
	before_action :reload_rails_admin, if: :rails_admin_path?
	
	private

	def reload_rails_admin
		models = %W(User Answer Event Genre Question Quiz Subgenre)
		models.each do |m|
			RailsAdmin
		end
	end

	def sign_up_params
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
	end

end

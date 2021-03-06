class ApplicationController < ActionController::Base
 # Protect cross site request forgery attacks with exception
	protect_from_forgery with: :exception
 
 # Filter for before configuration access
	before_filter zero_authors_or_authenticated, only:
 
 # Producted mode for configurator parameters
 # Only add some parameters

	protected
	 
	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:accept_invitation).concat [:email, :password, :passwordconfirmation]
	end

	def configure_permitted_parameters
		additional_params = [ :email, :password, :passwordconfirmation ]
		devise_parameter_sanitizer.permit(:sign_up, keys: additional_params)
		devise_parameter_sanitizer.permit(:account_update, keys: additional_params)
	end

 # Before action rails admin functionality
	before_action :reload_rails_admin, if: :rails_admin_path?

	private

	def reload_rails_admin
		models = %W(User Answer Event Genre Question Quiz Subgenre)
		models.each do |m|
			RailsAdmin::Config.reset_model(m)
		end
		RailsAdmin::Config::Actions.reset

		load("#{Rails.root}/config/initializers/rails_admin.rb")
	end

	def rails_admin_path?
		controller_path =~ /rails_admin/ && Rails.env.development?
	end

end

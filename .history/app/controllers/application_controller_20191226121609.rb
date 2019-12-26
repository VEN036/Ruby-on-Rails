class ApplicationController < ActionController::Base
 # Protect cross site request forgery attacks with exception
	protect_from_forgery with: :exception
 
 # Filter for before configuration access
	before_filter :configure_permitted_parameters, if: :devise_controller?
 
 # Producted mode for configurator parameters 
	protected 

	def configure_permitted_parameters
	# Only add some parameters
	devise_parameter_sanitizer.for(:action)


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

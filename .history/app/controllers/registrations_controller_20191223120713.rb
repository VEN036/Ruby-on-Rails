class RegistrationsController < ApplicationController
    private

    def sign_up_params
        params.require()
    end    

end

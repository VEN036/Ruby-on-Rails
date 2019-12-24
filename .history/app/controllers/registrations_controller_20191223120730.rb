class RegistrationsController < ApplicationController
    private

    def sign_up_params
        params.require(:user).permit(:name, :username, :email, )
    end    

end

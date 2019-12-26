class CompanyregsController < InheritedResources::Base
  skip _before_action :verify_authenticity_token, :only :create_company
  before_action :authenticate_

  private

    def companyreg_params
      params.require(:companyreg).permit(:companyid, :, :companyname, :, :testid, :, :testname, :, :createdat, :, :updatedat, :)
    end

end

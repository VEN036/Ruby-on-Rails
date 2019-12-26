class CompanyregsController < InheritedResources::Base
  skip _before_action :verify_authenticated

  private

    def companyreg_params
      params.require(:companyreg).permit(:companyid, :, :companyname, :, :testid, :, :testname, :, :createdat, :, :updatedat, :)
    end

end

class CompanyregsController < InheritedResources::Base

  private

    def companyreg_params
      params.require(:companyreg).permit(:companyid, :, :companyname, :, :testid, :testname, :createdat, :updatedat)
    end

end

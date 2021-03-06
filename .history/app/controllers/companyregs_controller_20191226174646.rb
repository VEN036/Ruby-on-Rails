class CompanyregsController < InheritedResources::Base
  skip _before_action :verify_authenticity_token, :only :create_company
  before_action :authenticate_user!
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET / companyregs
  # GET / companyregs.json
  
  def index
    @companyreg_count = Hash.new
    Genre.all.each do |g|
      @companyreg_
  end

  private

    def companyreg_params
      params.require(:companyreg).permit(:companyid, :, :companyname, :, :testid, :, :testname, :, :createdat, :, :updatedat, :)
    end

end

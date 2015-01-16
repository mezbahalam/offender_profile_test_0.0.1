class OffendersController < InheritedResources::Base


  def index
    @search = Offender.search(params[:q])
    @offenders= @search.result.page(params[:page]).per(5)
    @search.build_condition
  end

  def search_home
    @search = Offender.search(params[:q])
    @offenders= @search.result
    @search.build_condition
  end
  private


    def offender_params
      params.require(:offender).permit(:id,:name, :gender, :age, :address, :mobile_no, :occupation, :religion, :educational_background, :crimes, :father_name, :mother_name, :father_occupation, :mother_occupation, :family_income, :psychological_status, :image)
    end
end


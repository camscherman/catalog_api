class Api::V1::CatalogsController < Api::BaseController
  before_action :authenticate_api_user!
  def index
    catalogs = Catalog.all
    render json: catalogs
  end

  def show
    @catalog = Catalog.find(params[:id])

  end

  private
  def catalog_params
    params.require(:catalog).permit(:id)
  end
end

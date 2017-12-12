class Api::V1::BooksController < Api::BaseController
  before_action :authenticate_api_user!
  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])

  end
end

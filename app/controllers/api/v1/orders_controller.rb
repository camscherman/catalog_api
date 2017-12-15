class Api::V1::OrdersController < Api::BaseController
  before_action :authenticate_api_user!
  def create
    params = order_params
    book = Book.find_by({upc_code: params[:upc_code]})
    user_email = params[:user_email]
    order = Order.new(book_id: book.id , user_email: user_email, client_order_id: order_params[:client_order_id])
    if order.save
      render json: {Order: "Success"}
    else
      render json: {order: "failed"}
    end
  end

  private
  def order_params
    params.require(:order).permit(:upc_code, :user_email, :client_order_id)
  end
end

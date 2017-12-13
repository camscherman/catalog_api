class Api::V1::OrdersController < Api::BaseController
  def create
    params = order_params
    book = Book.find_by({upc_code: params[:upc_code]})
    user_email = params[:user_email]
    order = Order.new(book_id: book.id , user_email: user_email)
    if order.save
      render json: {Order: "Success"}
    else
      render json: {order: "failed"}
    end
  end

  private
  def order_params
    params.require(:order).permit(:upc_code, :user_email)
  end
end

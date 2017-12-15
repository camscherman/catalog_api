class Api::V1::ShipmentsController < Api::BaseController
  before_action :authenticate_api_user!
  def create
      book = Book.find_by({upc_code: shipment_params[:upc_code]})
      email = shipment_params[:email]
      tracking_number = rand(1..10000000000)

      order =  Order.find_by({client_order_id: shipment_params[:client_order_id]})
      order.update({status: "shipped"})
      shipment = Shipment.new({customer_email: email, book: book, tracking_number: tracking_number})
      if shipment.save
          render json: {success:"saved"}
      else
          render json: {error: "problem"}
      end
  end

  private
  def shipment_params
      params.require(:shipment).permit(:email, :upc_code, :client_order_id)
  end
end

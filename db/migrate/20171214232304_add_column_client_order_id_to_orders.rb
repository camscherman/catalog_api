class AddColumnClientOrderIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :client_order_id, :integer
  end
end

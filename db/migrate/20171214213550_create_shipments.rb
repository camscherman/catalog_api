class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.references :book, foreign_key: true
      t.string :tracking_number
      t.string :customer_email

      t.timestamps
    end
  end
end

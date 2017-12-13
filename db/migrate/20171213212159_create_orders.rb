class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :book, foreign_key: true
      t.string :user_email

      t.timestamps
    end
  end
end

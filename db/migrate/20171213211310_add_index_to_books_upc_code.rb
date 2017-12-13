class AddIndexToBooksUpcCode < ActiveRecord::Migration[5.1]
  def change
      add_index :books, :upc_code 
  end
end

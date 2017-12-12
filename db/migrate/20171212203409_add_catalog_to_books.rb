class AddCatalogToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :catalog, foreign_key: true
  end
end

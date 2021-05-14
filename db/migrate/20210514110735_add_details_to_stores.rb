class AddDetailsToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :category, :string
    add_column :stores, :bio, :text
    add_column :stores, :website, :string
    add_column :stores, :telephone, :string
    add_column :stores, :price_range, :integer
    add_column :stores, :rating, :integer
  end
end

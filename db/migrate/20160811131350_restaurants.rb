class Restaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants
    add_column :restaurants, :titre, :string
    add_column :restaurants, :categorie, :string
    add_column :restaurants, :description, :string
    add_column :restaurants, :category_id, :integer
    add_index :restaurants, :category_id
  end
end

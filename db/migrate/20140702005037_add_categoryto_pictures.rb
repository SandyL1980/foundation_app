class AddCategorytoPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :category, :string
  	remove_column :pictures, :category_id, :integer
  end
end

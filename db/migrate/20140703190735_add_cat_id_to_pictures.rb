class AddCatIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :category_id, :integer
    remove_column :pictures, :category
  end
end

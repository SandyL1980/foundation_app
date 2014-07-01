class AddCategoryIdToReviews < ActiveRecord::Migration
  def change

  	add_column :reviews, :picture_id, :integer
  	
  end
end

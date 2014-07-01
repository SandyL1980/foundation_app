class AddNameAndBodytoReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :name, :string
  	add_column :reviews, :body, :text
  end
end

class AddCustomUrlToPicture < ActiveRecord::Migration
  def change
  	add_column :pictures, :custom_url, :string
  end
end

class Review < ActiveRecord::Base

	belongs_to :picture
	belongs_to :user
end

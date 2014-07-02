class Picture < ActiveRecord::Base

	has_many :reviews

    scope :most_recent_five, -> { all.limit(5) }
end

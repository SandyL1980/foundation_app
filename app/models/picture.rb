class Picture < ActiveRecord::Base

	# belongs_to :category
	has_many :reviews

    scope :most_recent_five, -> { all.limit(5) }
    scope :picture_nature, -> {all.where(category: "nature")}
    scope :picture_animal, -> {all.where(category: "animals")}
    scope :picture_fashion, -> {all.where(category: "fashion")}
    scope :picture_city, -> {all.where(category: "city")}
    scope :picture_business, -> {all.where(category: "business")}
    scope :picture_technic, -> {all.where(category: "technics")}
    scope :picture_people, -> {all.where(category: "people")}
end

class Picture < ActiveRecord::Base

	belongs_to :category
	has_many :reviews

    scope :most_recent_five, -> { all.limit(5) }
    scope :nature, -> {all.where(category_id: Category.nature.id)}
    scope :animals, -> {all.where(category: Category.animals.id)}
    scope :fashion, -> {all.where(category_id: Category.fashion.id)}
    scope :city, -> {all.where(category: Category.city.id)}
    # scope :picture_business, -> {all.where(category: "business")}
    # scope :picture_technic, -> {all.where(category: "technics")}
    # scope :picture_people, -> {all.where(category: "people")}
end

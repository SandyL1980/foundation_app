class Category < ActiveRecord::Base

	has_many :pictures

    scope :nature, -> {self.find_by_name("nature")}
    scope :animals, -> {self.find_by_name("animals")}
    scope :fashion, -> {self.find_by_name("fashion")}

    # Add rest of scopes

end

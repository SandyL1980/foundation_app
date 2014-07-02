class PagesController < ApplicationController
  

  def nature
    @picture_nature = Picture.picture_nature
  end


  def fashion
    @picture_fashion = Picture.picture_fashion
  end

  def animal
    @picture_animal = Picture.picture_animal
  end

  def city
    @picture_city = Picture.picture_city
  end

  def business
    @picture_business = Picture.picture_business
  end

  def technic
    @picture_technic = Picture.picture_technic
  end

  def people
    @picture_people = Picture.picture_people
  end


end

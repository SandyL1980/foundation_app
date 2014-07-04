class CategoriesController < ApplicationController

  def index
  	@pictures = Picture.send(params[:name]) # same as Picture.nature or whatever category is passed
  end

end

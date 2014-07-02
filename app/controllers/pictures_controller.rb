class PicturesController < ApplicationController


  def index
    @title = "All Pictures"
    @pictures = Picture.all
    @most_recent_five = Picture.most_recent_five

    # @most_recent_pictures = Picture.most_recent_five
    @all_pic = Picture.all.count
    # @created_1_days_ago = Picture.created_before(1.day.ago).count
   end


   def new
    @title = "Add Picture"
    @picture = Picture.new
   end


   def create
     	
      @picture = Picture.new(picture_params)
      if @picture.save
        redirect_to pictures_url
      else
        render :new
    end
   end

  def edit
    @title = "Edit Picture"
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end


   def show
 
    @picture = Picture.find(params[:id])
    @title = @picture.title
    @reviews =  @picture.reviews.all

    if current_user
      @review = @picture.reviews.build
    end

    @pics = Picture.find(params[:id])
    # @comments =  @pics.comments.all
    
  end

  def destroy
    @title =  "Delete Picture"
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end

  private
  def picture_params
    params.require(:picture).permit(:author, :title, :description, :url)
  end



end

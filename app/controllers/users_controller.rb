class UsersController < ApplicationController
  

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to products_path, :notice => "Signed Up!"

  	else
  		render 'new'
  	end
  end


  def show
  	@user = User.find(params[:id])
  end

  	def edit
  		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
  	    	redirect_to user_path(@user), :notice => "You have successfully updated your account"
  		else
  			render 'edit'
    	end
	end 

def destroy
  @user = User.find(params[:id])
  @user.destroy

  @user.avatar = nil
  @user.save

  redirect_to products_path 

end

private
def user_params
  	params.require(:user).permit(:email, :name, :password, :password_confirmation, :avatar)
 end

end

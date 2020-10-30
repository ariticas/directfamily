class UsersController < ApplicationController
  def new
      @user = User.new
  end
  
  def show
      @user = User.find(params[:id])
  end
  
  
  # we use the user_params variable to avoud mass assignement and also adhere to RoR protocol
  
 def create
      @user = User.new(user_params)
      if @user.save
          log_in @user
          flash[:success] = "Welcome to Direct Family Solutions"
          redirect_to @user  # this line is equivalent - redirect_to user_url(@user)
       
     
      else
        render 'new'
    end
 end
  
private

 def user_params
    params.require(:user).permit(:name, :email, :password,:password_confirmation)
   end

end

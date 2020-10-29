class SessionsController < ApplicationController
  def new
  end
  
  def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        #this prevents session fixation atack nby reseting session before loggin in to clear ID and data
        reset_session
        log_in user
        redirect_to user
      else
         #flash.now will dissapaer when new request is made unlike flash that dissapears on the second request
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
    end
  end
  
  def destroy
  end
end

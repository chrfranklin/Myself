class SessionsController < ApplicationController
  def new
  end

  def create
    degbugger
  #  user = User.find_by_email(params[:session][:email])
    
 #   if User.checking(user,params[:session][:password])
 #     sign_in user
 #     redirect_to root_path
 #   else
 #     flash[:error] = 'Invalid email/password combination' # Not quite right!
 #     render 'new'
 #   end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
    
end

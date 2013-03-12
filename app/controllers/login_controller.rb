class LoginController < ApplicationController
  def signin
  end
  
  def signup
    @user = User.new
  end
  
end

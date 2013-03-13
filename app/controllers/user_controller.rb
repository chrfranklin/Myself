class UserController < ApplicationController
  def home
  end
  
  def introduce
  end
  
  def contact
  end
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
end

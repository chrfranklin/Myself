class CustomersController < ApplicationController

  def index 
    @user = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @customers = User.new
  end
  
  def create
    @customers = User.new(params[:user])
    p "=========="
    p @customers 
    p "=========="
    if @customers.save
      flash[:success] = "welcome"
      redirect_to :action => "home" ,:controller=>"user"
    else
      render 'new'
    end
  end
    
  
end

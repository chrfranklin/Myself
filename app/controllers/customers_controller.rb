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
    @customers = User.new(params[:customer])
    if @customers.save
      #flash[:success] = "欢迎来到寂静小站"
      redirect_to @customers
    else
      render 'new'
    end
  end
    
  
end

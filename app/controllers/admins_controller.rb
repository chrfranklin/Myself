class AdminsController < ApplicationController
  def home
    #@user=User.new
    if signed_in? == false      
      redirect_to root_path     
    end
  end
  
end

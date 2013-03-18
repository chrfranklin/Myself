class AdminsController < ApplicationController
  def home
    @user=User.new
  end
  
end

class SendEmailsController < ApplicationController
  before_filter :signed_in_user,only:[:index]
  
  def index
    @email=SendEmail.all
  end
  
  def new
    @email=SendEmail.new
  end
  
  def create
    @email=SendEmail.new(params[:send_email])
    
    if @email.save
      CommentMailer.comment_notify_email(@email.email).deliver
      redirect_to root_path
    else
      render 'new'
    end
    
  end
  
  private
    def signed_in_user
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end
end

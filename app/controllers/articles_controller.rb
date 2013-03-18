class ArticlesController < ApplicationController
  before_filter :signed_in_user,only:[:edit,:update]
  
  def passages
  end
  
  def new
    @article = Article.new #创建一个表对象
  end
  
  def index
    @article = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(params[:article]) 
    @article.user_id = session[:uid]
    @article.save    
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:success] = "Profile updated"
      redirect_to @article
    else
      render 'edit'
    end    
  end
  
  private
    def signed_in_user
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end
    
  
end

module SessionsHelper
  def sign_in(user)
    session[:uid] = user.id
  end
  
  def signed_in?
    session.has_key?(:uid)
  end
    
  def sign_out
    reset_session
  end
  
  def current_user
    #@current_user ||= User.find_by_remember_token(cookies[:remember_token])
    @current_user ||= User.find_by_id(session[:uid])
  end

  def current_user?(user)
    user == current_user
  end
  
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD


  helper_method :current_admin

  def current_admin 
  @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id] 
  end
  
  def require_admin 
  redirect_to '/login' unless current_admin 
  end

=======
  helper_method :current_user

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
>>>>>>> c33b1a0ef979b662fbdf8f496c663676bd106d28
end

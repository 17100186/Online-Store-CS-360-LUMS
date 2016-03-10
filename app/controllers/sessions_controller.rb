class SessionsController < ApplicationController
<<<<<<< HEAD
    def new
    end
    
  def create
  @admin = Admin.find_by_email(params[:session][:email])
  if @admin && @admin.authenticate(params[:session][:password])
    session[:admin_id] = @admin.id
    redirect_to '/'
  else
    redirect_to 'login'
  end 
  end

  def destroy 
  session[:admin_id] = nil 
  redirect_to '/' 
  end

    
=======
def new
end

def create
  user = User.authenticate(params[:email],params[:password])
  if user
    session[:user_id] = user.id
    redirect_to books_path, :notice => "Logged in!"
  else
    flash[:notice] = "Inavlid"
    redirect_to log_in_path
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
>>>>>>> c33b1a0ef979b662fbdf8f496c663676bd106d28
end

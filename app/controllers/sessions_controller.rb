class SessionsController < ApplicationController
  
  def authenticate_admin
    auth_hash = request.env['omniauth.auth']

    session[:admin_user] = auth_hash['user_info']['email']

    if admin?
      redirect_to 'http://admin.lvh.me:3000/users'
    else
      render :text => '401 Unauthorized', :status => 401
    end
  end
  
  
  def destroy
    reset_session
    redirect_to sessions_path
  end
  
  def index
  end
  
  
  
end

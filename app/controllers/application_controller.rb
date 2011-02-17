class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  helper_method :admin?, :current_user
  
  def admin?
    session[:admin_user] && (ADMINS || "").split(',').include?(session[:admin_user])
  end
  
  def admin_required
    redirect_to '/auth/admin' unless admin?
  end
  
  
  def current_user
    !!session[:admin_user]
  end
  
end

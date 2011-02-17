class Admin::UsersController < ApplicationController
  
  before_filter :admin_required

  def index
    render :text => "Hello from the admin panel! <br /><br /><a href='http://localhost:3000/logout'>Logout</a>"
  end
  
end

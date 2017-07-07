class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_is_admin
    if !current_user.admin?
      flash[:warning] = '你没有权限'
      redirect_to root_path
    end   
  end
end

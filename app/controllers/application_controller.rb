class ApplicationController < ActionController::Base
  private

  def require_signin
    unless signed_in?
      session[:intended_url] = request.url
      redirect_to user_session_path
    end
  end

  def block_if_not_admin 
    unless current_user.admin?
      redirect_to request.referrer, alert: "Only Admins have access"
    end
  end
end

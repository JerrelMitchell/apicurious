class SessionsController < ApplicationController
  def create
    session[:user_id] = user.id if user = User.from_omniauth(request.env["omniauth.auth"])
    redirect_to "/#{user.username}"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

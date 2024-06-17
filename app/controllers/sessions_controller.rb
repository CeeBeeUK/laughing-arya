class SessionsController < ApplicationController
  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id if user.valid?
    redirect_to root_path
  end
end

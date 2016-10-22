class SessionsController < ApplicationController
  skip_before_action :authorize #l'unica azione che permetto è il login
  
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to welcome_index_url
  	else
  		redirect_to login_url, alert: "Invalid user/password combnation"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_index_url, notice: "Logged out"
  end
end

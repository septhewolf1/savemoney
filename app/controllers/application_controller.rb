class ApplicationController < ActionController::Base
  before_action :authorize #eseguo il controllo della sessione prima di permettere qualsiasi azione
  	protect_from_forgery with: :exception

    protected
	#controllo che la sessione sia valida altrimenti rimando al login
  		def authorize
  			unless User.find_by(id: session[:user_id])
  				redirect_to login_url, notice: "Please Log-in"
  			end
  		end

      def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end

    helper_method :current_user
	end
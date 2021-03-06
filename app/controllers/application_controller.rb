class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

   def current_user
     @current_user ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
   end

   def authorize
     redirect_to '/login' unless current_user
   end
end

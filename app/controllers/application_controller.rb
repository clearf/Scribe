class ApplicationController < ActionController::Base
  protect_from_forgery


  helper_method :current_user
  # before_filter :check_session

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end

  # def check_session

  #   user = User.authenticate(params[:name], params[:password])
  #     if @current_user.nil?
  #     flash.now.alert = "Please sign in!"
  #     redirect_to '/log_in'
  #   else
  #     "Hi"
  #   end
  # end
  #   session[:user_id] = user.id
  #   if session[:user_id] != @current_user.id
  #     redirect to root_url, :notice => "Please sign in!"
  #   end

end

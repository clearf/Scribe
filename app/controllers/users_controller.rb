class UsersController < ApplicationController

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to log_in_path, :notice => "Signed up!"
    else
      render sign_up_path
    end
  end

#i dont think there should be a destroy option but leaving it here.
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :root_url
  end

  def show
    @user = User.find(params[:id])
  end

end
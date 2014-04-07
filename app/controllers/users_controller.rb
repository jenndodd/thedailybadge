class UsersController < ApplicationController

  before_action :authenticate, :authorize, only: [:edit, :update, :show]

  def new
    @user = User.new

    render(:new)
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render(:new)
    end
  end

  def show
    @user = User.find(params[:id])

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :email)
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def authorize
    unless current_user == @user
      redirect_to login path
    end
  end

end
class BadgesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @badge = Badge.new
    gon.currentUser = @user

    render(:new)
  end

  def index
    @user = User.find(params[:user_id])
    @badges = @user.badges

    render json: @badges
  end

  def create
    @user = User.find(params[:user_id])
    params.permit!
    @badge = Badge.new(params[:badge])
    @badge.user = @user
    @badge.save
    

    if @badge.save
      redirect_to ("/users/#{ @user.id }/badges/#{ @badge.id}")
    else
      render(:new)
    end

  end

  def show 
    @user = User.find(params[:user_id]) 
    @badge = Badge.find_by(id: params[:id])
  end

  private

  def badge_params
    params.require(:badge).permit(:title, :description)
  end

end
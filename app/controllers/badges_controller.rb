class BadgesController < ApplicationController

  def new
    @user = User.find(params[:id])
    @badge = Badge.new
  end

  def show 
    @badge = Badge.find(params[:id])
  end

end
class WelcomeController < ApplicationController

  def index
    @user = current_user
    gon.currentUser = @user
  end

end
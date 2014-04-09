class WelcomeController < ApplicationController

  def index
    @user = current_user

    gon.currentUser = @user
    @user render(:index)
  end

end
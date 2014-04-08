require 'spec_helper'

describe "user can see their badges" do

  let!(:user) { FactoryGirl.create(:user)}
  let!(:badge) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:badge) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:badge) { FactoryGirl.create(:badge, user_id: user.id) }

  it "sees their badges" do

    login(user)
    visit root_path

    click_link "dashboard"

  end

  def login(user)
    visit login_path
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in!"
  end

end  
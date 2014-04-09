require 'spec_helper'

describe "user can see their dashboard", :js => true do
  let!(:user) { FactoryGirl.create(:user) }

  it "views their dashboard" do
    #logs Tom in.
    login(user)
    #goes to the home page
    visit root_path

    click_link "dashboard"

    expect(page).to have_content user.first_name
  end

  def login(user)
    visit login_path
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in!"
  end
end
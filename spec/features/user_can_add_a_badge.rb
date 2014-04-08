require 'spec_helper'

describe "user can see badge details" do

  let!(:user) { FactoryGirl.create(:user)}
  let!(:badge1) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:badge2) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:badge3) { FactoryGirl.create(:badge, user_id: user.id) }

  it "lets a user add a badge" do
    
    login(user)

    within "#badge_list" do
      expect(page).to have_content badge1.title
      expect(page).to have_content badge2.title
      expect(page).to have_content badge3.title
    end

    click_link "Add a Badge"

    expect(page).to have_content "New Badge"

    fill_in :title, with: "Eat 50 chicken wings"
    fill_in :description, with: "Take the challenge. Eat the wings. Be victorious!"
    

  end

  def login(user)
    visit login_path
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in!"
  end

end
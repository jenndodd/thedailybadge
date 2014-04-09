require 'spec_helper'

describe "user can see badge details", :js => true do

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

    # badge info
    fill_in :badge_title, with: "Eat 100 chicken wings"
    fill_in :badge_description, with: "Take the challenge. Eat the wings. Be victorious!"

    #checkpoints
    fill_in :badge_checkpoints_attributes_0_title, with: "Eat 25 wings"
    fill_in :badge_checkpoints_attributes_1_title, with: "Eat 50 wings"
    fill_in :badge_checkpoints_attributes_2_title, with: "Eat 75 wings"
    fill_in :badge_checkpoints_attributes_3_title, with: "Eat 100 wings"

    click_button "Add"

    visit "/users/#{user.id}"

    within "#badge_list" do
      expect(page).to have_content "Eat 100 chicken wings"
    end

    click_link( 'Eat 100 chicken wings')

    within "#checkpoint_list" do
      expect(page).to have_content "Eat 75 wings"
    end 

  end

  def login(user)
    visit login_path
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in!"
  end

end
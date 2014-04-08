require 'spec_helper'

describe "user can see badge details" do

  let!(:user) { FactoryGirl.create(:user)}
  let!(:badge1) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:badge2) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:badge3) { FactoryGirl.create(:badge, user_id: user.id) }
  let!(:checkpoint1) { FactoryGirl.create(:checkpoint, badge_id: badge1.id) }
  let!(:checkpoint2) { FactoryGirl.create(:checkpoint, badge_id: badge1.id) }
  let!(:checkpoint3) { FactoryGirl.create(:checkpoint, badge_id: badge1.id) }
  let!(:checkpoint4) { FactoryGirl.create(:checkpoint, badge_id: badge1.id) }


  it "sees badge details" do

    login(user)
    visit root_path

    click_link "dashboard"
    save_and_open_page

    within "#badge_list" do
      expect(page).to have_content badge1.title
      expect(page).to have_content badge2.title
      expect(page).to have_content badge3.title
    end

    click_link('badge1.id')

  end

  def login(user)
    visit login_path
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in!"
  end

end  
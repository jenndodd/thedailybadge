require 'spec_helper'

describe User do
  let!(:jenn) { User.create(email: "jennnotjen@gmail.com", username: "jennnotjen", first_name: "Jenn", last_name: "notJen", password: "jennnotjen", password_confirmation: "jennnotjen")}

  it { should have_many(:badges) }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:username) }


end
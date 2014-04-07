require 'spec_helper'

describe Badge do
  let!(:jenn) { User.create(email: "jennnotjen@gmail.com", username: "jennnotjen", first_name: "Jenn", last_name: "notJen", password: "jennnotjen", password_confirmation: "jennnotjen")}
  let!(:makeBadge) { Badge.create(user_id: jenn.id, )}

  it { should belong_to(:user) }
  it { should have_many(:checkpoints)}

  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:created_at)}

  it { should validate_uniqueness_of(:title) }

end
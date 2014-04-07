require 'spec_helper'

describe Checkpoint do
  
  let!(:jenn) { User.create(email: "jennnotjen@gmail.com", username: "jennnotjen", first_name: "Jenn", last_name: "notJen", password: "jennnotjen", password_confirmation: "jennnotjen")}
  let!(:makeBadge) { Badge.create(user_id: jenn.id, )}

  it { should belong_to(:badge) }

  it { should validate_presence_of(:title) }
end
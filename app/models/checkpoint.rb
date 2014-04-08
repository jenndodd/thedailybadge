class Checkpoint < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :badge
end
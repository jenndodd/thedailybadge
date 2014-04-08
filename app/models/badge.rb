class Badge < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  has_many :checkpoints
  belongs_to :user
end
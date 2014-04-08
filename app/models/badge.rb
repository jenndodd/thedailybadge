class Badge < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :created_at, presence: true
  has_many :checkpoints
  belongs_to :user
end
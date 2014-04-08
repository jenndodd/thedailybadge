class Badge < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  has_many :checkpoints
  accepts_nested_attributes_for :checkpoints, 
    :allow_destroy => true,  
    :reject_if => :all_blank
  belongs_to :user
end
class Nation < ActiveRecord::Base

  belongs_to :user
  has_many :responses
  has_many :events, through: :responses
  validates :name, :government, :economy, :geography, :presence => true
end

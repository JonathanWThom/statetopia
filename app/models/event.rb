class Event < ActiveRecord::Base
  has_many :responses
  has_many :nations, through: :responses
  validates :name, :presence => true
end

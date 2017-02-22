class Response < ActiveRecord::Base

  belongs_to :event
  belongs_to :nation
  validates :description, :capital_effect, :population_effect, :stability_effect, :resources_effect, :presence => true
end

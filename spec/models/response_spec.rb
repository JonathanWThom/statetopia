require 'rails_helper'

describe Response do
  it { should belong_to :nation }
  it { should belong_to :event }
  it { should validate_presence_of :description }
  it { should validate_presence_of :capital_effect }
  it { should validate_presence_of :population_effect }
  it { should validate_presence_of :stability_effect }
  it { should validate_presence_of :resources_effect }
end

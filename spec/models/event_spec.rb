require 'rails_helper'

describe Event do
  it { should have_many :responses }
  it { should have_many(:nations).through(:responses) }
  it { should validate_presence_of :name }
end

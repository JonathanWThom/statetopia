require 'rails_helper'

describe Nation do
  it { should have_many :responses }
  it { should have_many(:events).through(:responses) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :government }
  it { should validate_presence_of :economy }
  it { should validate_presence_of :geography }
end

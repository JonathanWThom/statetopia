class Nation < ActiveRecord::Base

  belongs_to :user
  has_many :responses
  has_many :events, through: :responses
  validates :name, :government, :economy, :geography, :presence => true

  before_create :set_attributes

  def edit_resources(response)
    self.stability += response.stability_effect
    self.capital += response.capital_effect
    self.resources += response.resources_effect
    self.population += response.population_effect
    self.year += 1
  end

  def set_attributes
    #stability
    if self.government == 'Dictatorship'
      self.stability = 0.25
    elsif self.government == 'Democracy'
      self.stability = 0.75
    else
      self.stability = 0.5
    end

    #capital
    if self.economy == 'Capitalist'
      self.capital = 1000
    elsif self.economy == 'Socialist'
      self.capital = 500
    else
      self.capital = 750
    end

    #population
    if self.geography == 'Desert'
      self.population = 10000
    elsif self.geography == 'Forest'
      self.population = 30000
    elsif self.geography == 'Plains'
      self.population = 20000
    else
      self.population = 5000
    end

    #resources
    if self.geography == 'Forest' && self.economy == 'Capitalist'
      self.resources = 1000
    elsif self.geography == 'Mountains' && self.economy == 'Socialist'
      self.resources = 250
    else
      self.resources = 700
    end

  end

end

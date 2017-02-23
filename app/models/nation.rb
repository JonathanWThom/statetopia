class Nation < ActiveRecord::Base

  belongs_to :user
  has_many :responses
  has_many :events, through: :responses
  validates :name, :government, :economy, :geography, :presence => true

  before_create :set_attributes

  def game_status
    if self.stability <= 0 or self.capital <= 0 or self.resources <= 0 or self.population <= 0
      return 'lose'
    elsif self.year == 2030
      return 'win'
    end
  end

  def edit_resources(response)
    self.stability += response.stability_effect
    if self.stability >= 1
      self.stability = 1
    elsif self.stability <= 0
      self.stability = 0
    end
    self.capital += response.capital_effect
    if self.capital <= 0
      self.capital = 0
    end
    self.resources += response.resources_effect
    if self.resources <= 0
      self.resources = 0
    end
    self.population += response.population_effect
    if self.population <= 0
      self.population = 0
    end
    self.year += 1
  end

  def set_attributes
    #stability
    if self.government == 'Dictatorship'
      self.stability = 0.5
    elsif self.government == 'Democracy'
      self.stability = 0.9
    else
      self.stability = 0.75
    end

    #capital
    if self.economy == 'Capitalist'
      self.capital = 200
    elsif self.economy == 'Socialist'
      self.capital = 100
    else
      self.capital = 150
    end

    #population
    if self.geography == 'Desert'
      self.population = 1500000
    elsif self.geography == 'Forest'
      self.population = 3000000
    elsif self.geography == 'Plains'
      self.population = 2000000
    else
      self.population = 1000000
    end

    #resources
    if self.geography == 'Forest' && self.economy == 'Capitalist'
      self.resources = 5000
    elsif self.geography == 'Mountains' && self.economy == 'Socialist'
      self.resources = 15000
    else
      self.resources = 7000
    end

  end

end

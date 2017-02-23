require 'rails_helper'

describe Nation do
  it { should have_many :responses }
  it { should have_many(:events).through(:responses) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :government }
  it { should validate_presence_of :economy }
  it { should validate_presence_of :geography }

  describe '#set_attributes' do
    it 'adds nation attributes based on user input' do
      user = create(:user)
      nation = Nation.new(government: 'Aristocracy', economy: 'Capitalist', geography: 'Forest', name: 'The Great Nation of Nationland', user_id: user.id)
      nation.save
      expect(nation.capital).to(eq(200))
      expect(nation.stability).to(eq(0.75))
      expect(nation.population).to(eq(3000000))
      expect(nation.resources).to(eq(5000))
    end

    it 'adds nation attributes based on user input' do
      user = create(:user)
      nation = Nation.new(government: 'Aristocracy', economy: 'Capitalist', geography: 'Desert', name: 'The Great Nation of Nationland', user_id: user.id)
      nation.save
      expect(nation.population).to(eq(1500000))
    end
  end

  describe '#game_status' do
    it 'will say if you lost the game' do
      nation = create(:nation)
      nation.update(capital: 0)
      expect(nation.game_status).to(eq('lose'))
    end

    it 'will say if you won the game' do
      nation = create(:nation)
      nation.update(year: 2030)
      expect(nation.game_status).to(eq('win'))
    end
  end

  describe '#edit_resources' do
    it 'will change resources based on a chosen response' do
      nation = create(:nation)
      response = create(:response, population_effect: -500)
      nation.edit_resources(response)
      nation.save
      expect(nation.population).to(eq(999500))
    end
  end
end

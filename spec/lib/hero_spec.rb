require 'spec_helper'
require 'hero'

describe Hero do
  context 'when is with armor' do
    it 'has 5000 HP points' do
      hero = Hero.new
      expect(hero.hp).to eq(5000)
    end
  end

  context 'when is without armor' do
    it 'has 1000 HP points' do

    end
  end

  it 'has a sword' do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end

  it 'has more than 1000 HP points' do
    hero = Hero.new
    expect(hero.hp).to be > 1000
  end

  describe '#attack' do
    context 'when attack is magic' do

    end

    context 'when attack is sword' do

    end
  end

  describe  '#defense' do
    context 'when defense shield' do

    end
  end
end

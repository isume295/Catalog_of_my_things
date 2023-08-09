require_relative '../classes/games/game'
require 'rspec'

describe Game do
  context 'Testing the game class' do
    game = Game.new('2012-02-27', 'yes', '2013-12-12')
    it 'Should create new game with those arguments' do
      expect(game).to be_an_instance_of(Game)
    end
    it 'Should return correct multiplayer' do
      expect(game.multiplayer).to eq 'yes'
    end
    it 'Should return correct last_played_at' do
      expect(Date.parse(game.last_played_at).year).to eq 2013
    end
    it 'should return true if parent method returns true || if last_played_at is older than 2 years' do
      expect(game.can_be_archived?).to eq true
    end
  end
end

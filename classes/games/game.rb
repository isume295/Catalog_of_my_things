require_relative 'game_item'
require 'date'

class Game < GameItem
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, multiplayer, last_played_at, id = nil)
    super(publish_date, id)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && Date.today.year - Date.parse(@last_played_at).year > 2
  end
end

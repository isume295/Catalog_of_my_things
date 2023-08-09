require_relative '../item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :author

  def initialize(publish_date, multiplayer, last_played_at, id = nil)
    super(publish_date, id)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @author = author
  end

  def can_be_archived?
    super && Date.today.year - Date.parse(@last_played_at).year > 2
  end
end

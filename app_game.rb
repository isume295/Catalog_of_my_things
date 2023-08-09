require_relative 'classes/games/game'
require_relative 'classes/games/author'
require_relative 'modules/game/addgame'
require_relative 'modules/game/displaygame'
require_relative 'modules/game/displayauthor'
require_relative 'modules/game/preservegameauthor'
require_relative 'modules/game/load_game_author'

class App
  attr_accessor :games, :author

  include AddGame
  include DisplayGame
  include DisplayAuthor
  include PreserveGameAuthor
  include LoadGameAuthor

  def initialize
    @games = []
    @authors = []
    load_authors
    load_games
  end

  def run(option)
    case option
    when 1
      display_all_games
    when 2
      display_all_authors
    when 3
      add_game
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def save_and_exit
    save_games
    save_author
    exit
  end
end

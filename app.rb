require_relative 'classes/movie/movie'
require_relative 'classes/movie/source'
require_relative 'modules/movie/addmovie'
require_relative 'modules/movie/displaymovie'
require_relative 'modules/movie/displaysources'

class App
  attr_accessor :movies

  include AddMovie
  include DisplayMovie
  include DisplaySources

  def initialize
    @movies = []
    @sources = []
  end

  def run(option)
    case option
    when 1
      display_all_movies
    when 2
      display_all_sources
    when 3
      add_movie
    when 4
      puts option
    else
      puts 'Thank you for using this app!'
      exit
    end
  end
end

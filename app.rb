require_relative 'classes/movie/movie'
require_relative 'classes/movie/source'
require_relative 'modules/movie/addmovie'
require_relative 'modules/movie/displaymovie'
require_relative 'modules/movie/displaysources'
require_relative 'modules/movie/preservemoviesource'
require_relative 'modules/movie/load_movie_source'

class App
  attr_accessor :movies

  include AddMovie
  include DisplayMovie
  include DisplaySources
  include PreserveMovieSource
  include LoadMovieSource

  def initialize
    @movies = []
    @sources = []
    load_sources
    load_movies
  end

  def run(option)
    case option
    when 1
      display_all_movies
    when 2
      display_all_sources
    when 3
      add_movie
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def save_and_exit
    save_movies
    save_source
    exit
  end
end

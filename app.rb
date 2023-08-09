require_relative 'classes/movie/movie'
require_relative 'classes/movie/source'
require_relative 'modules/movie/addmovie'
require_relative 'modules/movie/displaymovie'
require_relative 'modules/movie/displaysources'
require_relative 'modules/movie/preservemoviesource'
require_relative 'modules/movie/load_movie_source'
require_relative 'classes/book/book'
require_relative 'classes/book/label'
require_relative 'modules/book/addbook'
require_relative 'modules/book/displaybook'
require_relative 'modules/book/displaylabel'
require_relative 'modules/book/load_book_label'
require_relative 'modules/book/preservedata'

class App
  attr_accessor :movies, :books, :label

  include AddMovie
  include DisplayMovie
  include DisplaySources
  include PreserveMovieSource
  include LoadMovieSource
  include AddBook
  include DisplayBook
  include DisplayLabel
  include PreserveData
  include LoadData

  def initialize
    @movies = []
    @sources = []
    @books = []
    @label = []
    load_sources
    load_movies
    load_labels
    load_books
  end

  def run(option)
    case option
    when 1
      display_books
    when 3
      display_all_movies
    when 6
      display_labels
    when 8
      display_all_sources
    when 9
      add_book
    when 11
      add_movie
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def save_and_exit
    save_movies
    save_source
    save_book
    save_label
    exit
  end
end

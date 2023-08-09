require_relative 'classes/movie/movie'
require_relative 'classes/movie/source'
require_relative 'classes/book/book'
require_relative 'classes/book/label'
require_relative 'classes/music/music_album'
require_relative 'classes/music/genre'
require_relative 'modules/modules'

class App
  attr_accessor :movies, :books, :label

  include Modules

  def initialize
    @movies = []
    @sources = []
    @books = []
    @label = []
    @genres = []
    @music_albums = []
    load_collections
  end

  def run_till6(option)
    case option
    when 1
      display_books
    when 2
      display_all_music_albums
    when 3
      display_all_movies
    when 5
      display_all_genres
    when 6
      display_labels
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def run_more_than6(option)
    case option
    when 8
      display_all_sources
    when 9
      add_book
    when 10
      add_music
    when 11
      add_movie
    else
      puts 'Thank you for using this app!'
      save_and_exit
    end
  end

  def save_and_exit
    save_collections
    exit
  end
end

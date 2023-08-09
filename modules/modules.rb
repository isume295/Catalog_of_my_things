require_relative 'movie/addmovie'
require_relative 'movie/displaymovie'
require_relative 'movie/displaysources'
require_relative 'movie/preservemoviesource'
require_relative 'movie/load_movie_source'
require_relative 'book/addbook'
require_relative 'book/displaybook'
require_relative 'book/displaylabel'
require_relative 'book/load_book_label'
require_relative 'book/preservedata'
require_relative 'music/addmusic'
require_relative 'music/displaymusic'
require_relative 'music/displaygenre'
require_relative 'music/storage'

module Modules
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
  include AddMusic
  include DisplayMusic
  include DisplayGenres
  include Storage

  def save_collections
    save_movies
    save_source
    save_book
    save_label
    save_music
  end

  def load_collections
    load_sources
    load_movies
    load_labels
    load_books
    load_genres
    load_music_albums
  end
end

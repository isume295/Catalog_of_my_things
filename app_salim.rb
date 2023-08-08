require_relative 'classes/music/music_album'
require_relative 'classes/music/genre'
require_relative 'modules/music/addmusic'
require_relative 'modules/music/displaymusic'
require_relative 'modules/music/displaygenre'
require_relative 'modules/music/storage'

class App
  attr_accessor :music_albums

  include AddMusic
  include DisplayMusic
  include DisplayGenres
  include Storage

  def initialize
    @genres = []
    @music_albums = []
    load_genres
    load_music_albums
  end

  def run(option)
    case option
    when 1
      display_all_music_albums
    when 2
      display_all_genres
    when 3
      add_music
    when 4
      puts option
      save_music
    else
      puts 'Thank you for using this app!'
      save_music
      exit
    end
  end
end

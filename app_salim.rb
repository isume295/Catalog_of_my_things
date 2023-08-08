require_relative 'classes/music/music_album'
require_relative 'classes/music/genre'
require_relative 'modules/music/addmusic'
require_relative 'modules/music/displaymusic'
require_relative 'modules/music/displaygenre'

class App
  attr_accessor :music_albums

  include AddMusic
  include DisplayMusic
  include DisplayGenres

  def initialize
    @music_albums = []
    @genres = []
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
    else
      puts 'Thank you for using this app!'
      exit
    end
  end
end

  def add_music
    publish_date = input_date
    on_spotify = input_on_spotify
    music_album = MusicAlbum.new(publish_date: publish_date, on_spotify: on_spotify)
    @music_albums << music_album
    genre = add_genre
    music_album.add_genre(genre)
    puts 'Music album Added Successfully'
  end

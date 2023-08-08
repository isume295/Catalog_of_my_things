module DisplayMusic
  def display_all_music_albums
    @music_albums.each_with_index do |music, index|
      genre_name = music.genre ? music.genre.name : 'N/A'
      puts "#{index}) on_Spotify: #{music.on_spotify}, Publish Date: #{music.publish_date} Genre: #{genre_name}"
    end
  end
end

require 'json'

module Storage
  def save_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end

  def save_music
    save_music_albums
    save_genres
  end

  def save_music_albums
    json_data = @music_albums.map(&:to_hash)
    save_file('data/music_albums.json', json_data)
  end

  def save_genres
    json_data = @genres.map(&:to_hash)
    save_file('data/genres.json', json_data)
  end

  def load_file(file_name)
    data = File.read(file_name)
    JSON.parse(data)
  end

  def load_music_albums
    music_albums_hash = []
    return music_albums_hash unless File.exist?('data/music_albums.json')

    music_albums_hash = load_file('data/music_albums.json')

    music_albums_hash.each do |music|
      music_obj = MusicAlbum.new(publish_date: music['publish_date'], on_spotify: music['on_spotify'],
                                 id: music['id'])
      genre_obj = @genres.find { |genre| genre.name == music['genre'] }
      music_obj.add_genre(genre_obj)
      @music_albums << music_obj
    end
  end

  def load_genres
    genre_hash = []
    return genre_hash unless File.exist?('data/genres.json')

    genre_hash = load_file('data/genres.json')
    genre_hash.each do |genre|
      genre_obj = Genre.new(name: genre['name'], id: genre['id'])
      @genres << genre_obj
    end
  end
end

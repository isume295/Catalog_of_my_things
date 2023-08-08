require 'json'
require 'pry'
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


require 'json'

module PreserveGameAuthor
  GAMES_FILE_NAME = 'data/games.json'.freeze
  AUTHOR_FILE_NAME = 'data/author.json'.freeze

  def save_to_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end

  def save_games
    game_hash = @games.map do |game|
      {
        id: game.id,
        publish_date: game.publish_date,
        multiplayer: game.multiplayer,
        last_played_at: game.last_played_at,
        author: game.author.first_name

      }
    end
    save_to_file(GAMES_FILE_NAME, game_hash)
  end

  def save_author
    author_hash = @authors.map do |author|
      {
        id: author.id,
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    save_to_file(AUTHOR_FILE_NAME, author_hash)
  end
end

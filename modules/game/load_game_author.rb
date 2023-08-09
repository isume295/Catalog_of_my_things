require 'json'

module LoadGameAuthor
  GAMES_FILE_NAME = 'data/games.json'.freeze
  AUTHOR_FILE_NAME = 'data/author.json'.freeze

  def load_data_from_file(file_name)
    file = File.read(file_name)
    JSON.parse(file)
  end

  def load_authors
    author_hash = []
    return author_hash unless File.exist?(AUTHOR_FILE_NAME)

    author_hash = load_data_from_file(AUTHOR_FILE_NAME)

    author_hash.each do |author|
      author_obj = Author.new(author['first_name'], author['last_name'])
      author_obj.id = author['id']
      @authors << author_obj
    end
  end

  def load_games
    game_hash = []
    return game_hash unless File.exist?(GAMES_FILE_NAME)

    game_hash = load_data_from_file(GAMES_FILE_NAME)
    game_hash.each do |game|
      game_obj = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'])
      game_obj.id = game['id']
      author_obj = @authors.find { |author| author.first_name == game['author'] }
      game_obj.add_author(author_obj)
      @games << game_obj
    end
  end
end

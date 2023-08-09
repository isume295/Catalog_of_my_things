module DisplayGame
  def display_all_games
    @games.each_with_index do |game, index|
      puts "#{index}) Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}, Publish Date: #{game.publish_date} Author: #{game.author.first_name} #{game.author.last_name}"
    end
  end
end
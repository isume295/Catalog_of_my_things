module DisplayGenres
  def display_all_genres
    @genres.each_with_index do |genre, index|
      puts "#{index}) Genre Name: #{genre.name}"
    end
  end
end

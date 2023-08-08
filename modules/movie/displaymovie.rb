module DisplayMovie
  def display_all_movies
    @movies.each_with_index do |movie, index|
      puts "#{index}) Silent: #{movie.silent}, Publish Date: #{movie.publish_date} Source: #{movie.source.name}"
    end
  end
end

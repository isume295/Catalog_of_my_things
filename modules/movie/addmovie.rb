module AddMovie
  def add_movie
    publish_date = input_date
    silent = input_silent
    movie = Movie.new(publish_date, silent: silent)
    @movies << movie
    new_source = add_sources
    existing_source = @sources.find { |source| source.name == new_source }
    if existing_source
      existing_source.add_item(movie)
    else
      source = Source.new(new_source)
      source.add_item(movie)
      @sources << source
    end
  end

  def input_date
    puts 'Please Enter publish date in following format: yyyy/mm/dd'
    gets.chomp
  end

  def add_sources
    puts 'Add a source'
    puts 'Enter Source Name'
    gets.chomp
  end

  def input_silent
    puts 'Is the movie silent? Press 1 for true, 2 for false'
    silent = gets.chomp.to_i
    while silent.nil? || silent < 1 || silent > 2
      puts 'input number between 1 and 2'
      silent = gets.chomp.to_i
    end

    silent == 1
  end
end

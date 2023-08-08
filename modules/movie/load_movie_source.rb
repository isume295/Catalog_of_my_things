require 'json'

module LoadMovieSource
  MOVIE_FILE_NAME = 'data/movie.json'.freeze
  SOURCE_FILE_NAME = 'data/source.json'.freeze

  def load_data_from_file(file_name)
    file = File.read(file_name)
    JSON.parse(file)
  end

  def load_sources
    source_hash = []
    return source_hash unless File.exist?(SOURCE_FILE_NAME)

    source_hash = load_data_from_file(SOURCE_FILE_NAME)

    source_hash.each do |source|
      source_obj = Source.new(source['name'])
      source_obj.id = source['id']
      @sources << source_obj
    end
  end

  def load_movies
    movie_hash = []
    return movie_hash unless File.exist?(MOVIE_FILE_NAME)

    movie_hash = load_data_from_file(MOVIE_FILE_NAME)
    movie_hash.each do |movie|
      movie_obj = Movie.new(movie['publish_date'], silent: movie['silent'])
      movie_obj.id = movie['id']
      source_obj = @sources.find { |source| source.name == movie['source'] }
      movie_obj.add_source(source_obj)
      @movies << movie_obj
    end
  end
end

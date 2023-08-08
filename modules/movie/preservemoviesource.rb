require 'json'

module PreserveMovieSource
  MOVIE_FILE_NAME = 'data/movie.json'.freeze
  SOURCE_FILE_NAME = 'data/source.json'.freeze

  def save_to_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end

  def save_movies
    movie_hash = @movies.map do |movie|
      {
        id: movie.id,
        publish_date: movie.publish_date,
        silent: movie.silent,
        source: movie.source.name
      }
    end
    save_to_file(MOVIE_FILE_NAME, movie_hash)
  end

  def save_source
    source_hash = @sources.map do |source|
      {
        id: source.id,
        name: source.name
      }
    end
    save_to_file(SOURCE_FILE_NAME, source_hash)
  end
end

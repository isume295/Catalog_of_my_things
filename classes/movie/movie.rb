require_relative '../item_movie'
require_relative '../source'

class Movie < ItemMovie
  attr_accessor :archived

  def initialize(publish_date, id: nil, silent: true)
    super(publish_date, id)
    @silent = silent
  end

  def can_be_archived?
    super && @silent
  end
end

movie = Movie.new('1999/02/28')
puts movie.move_to_archive

puts movie.archived

source = Source.new('Motion Pictures')
movie.add_source(source)
puts movie.source.name
puts source.items.first.publish_date

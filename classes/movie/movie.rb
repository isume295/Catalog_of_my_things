require_relative '../item_movie'
require_relative 'source'

class Movie < ItemMovie
  attr_accessor :archived, :silent

  def initialize(publish_date, silent:, id: nil)
    super(publish_date, id)
    @silent = silent
  end

  def can_be_archived?
    super && @silent
  end
end

require_relative '../item_movie'

class Movie < ItemMovie
  def initialize(publish_date, id: nil, silent: true)
    super(publish_date: publish_date, id: id)
    @silent = silent
  end

  def can_be_archived?
    super && silent
  end
end

require_relative '../item'
require_relative 'source'

class Movie < Item
  attr_accessor :archived, :silent

  def initialize(publish_date, silent:, id: nil)
    super(publish_date, id)
    @silent = silent
  end

  def can_be_archived?
    super && @silent
  end
end

require 'date'
require_relative 'movie/source'

class ItemMovie
  attr_accessor :archived, :source, :publish_date, :id

  def initialize(publish_date, id = nil)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
  end

  def add_genre; end

  def add_author; end

  def add_label; end

  def add_source(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def can_be_archived?
    current_year = Date.today.year
    publish_year = Date.parse(@publish_date).year
    current_year - publish_year > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end

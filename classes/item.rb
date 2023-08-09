require 'date'

class Item
  attr_accessor :archived, :source, :publish_date, :id, :genre, :can_be_archived, :label

  def initialize(publish_date, id = nil)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_label(label)
    @label = label
    @label.add_item(self)
  end

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

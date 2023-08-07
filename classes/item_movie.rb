require 'date'

class Item_Movie
  def initialize(publish_date, id = nil)
    @id = id || random.rand(1..1000)
    @publish_date = publish_date
  end

  def add_genre; end

  def add_author; end

  def add_label; end

  def add_source; end

  def can_be_archived?
    current_year = Date.today.year
    publish_year = Date.parse(@publish_date).year
    current_year - publish_year > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end

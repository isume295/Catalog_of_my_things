require 'date'
require_relative 'book/label'

class Item
  attr_accessor :publish_date, :id, :label, :can_be_archived

  def initialize(publish_date, id = nil)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
    @label = nil
  end

  def add_genre; end

  def add_author; end

  def add_label(label)
    @label = label
    @label.add_item(self)
  end

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

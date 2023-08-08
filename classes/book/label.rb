class Label
  attr_accessor :items, :color, :title, :id

  def initialize(color, title, id = nil)
    @id = id || Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end

class Author
  attr_accessor :id, :first_name, :last_name
  attr_reader :items

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_items(item)
    @items << item
    item.add_author(self)
  end
end

require_relative '../item_sume'

class Book < Item
  attr_accessor :cover_state, :publisher
 
  def initialize(cover_state, publisher, publish_date, id = nil)
    super(publish_date, id)
    @cover_state = cover_state
    @publisher = publisher
  end

  def can_be_archived
    super || (@cover_state == 'bad')
  end
end

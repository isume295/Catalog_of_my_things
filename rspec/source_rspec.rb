require_relative '../classes/source'
require_relative '../classes/item_movie'

describe Source do
  let(:name) { 'Motion Pictures' }

  subject { described_class.new(name) }

  describe '#add_item' do
    it 'adds an item to the source and sets source for the item' do
      item = ItemMovie.new('2005/07/15')
      subject.add_item(item)
      expect(subject.items).to include(item)
      expect(item.source).to eq(subject)
    end
  end
end

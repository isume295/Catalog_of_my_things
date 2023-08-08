require_relative '../classes/book/label'
require_relative '../classes/item_sume'

RSpec.describe Label do
  let(:label_title) { 'Fiction' }
  let(:label_color) { 'green' }
  let(:id) { 2 }
  let(:label) { Label.new(label_color, label_title, id) }

  # Test the initialization of the Book class
  describe '#initialize' do
    it 'creates a book with the correct cover state  and publisher' do
      expect(label.title).to eq(label_title)
      expect(label.color).to eq(label_color)
      expect(label.id).to eq(id)
    end
  end

  describe '#add_item' do
    let(:item) { Item.new('2023-08-07') }
    it 'adds an item to the label' do
      label.add_item(item)
      expect(label.items).to include(item)
    end

    it 'sets the label attribute of the added item' do
      label.add_item(item)
      expect(item.label).to eq(label)
    end
  end
end

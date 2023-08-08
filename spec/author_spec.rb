require_relative '../classes/games/author'
require 'rspec'

describe Author do
  context 'Testing the author class' do
    author = Author.new('J. K. Rowling', 'Okyere')
    it 'Should create new author with those arguments' do
      expect(author).to be_an_instance_of(Author)
    end
    it 'Should return correct first name' do
      expect(author.first_name).to eq 'J. K. Rowling'
    end
    it 'Should return correct correct' do
      expect(author.last_name).to eq 'Okyere'
    end
    it 'Should return correct items' do
      expect(author.items).to eq []
    end
  end
end

require_relative '../classes/book/book'

RSpec.describe Book do
  let(:book_publisher) { 'John Doe' }
  let(:book_cover_state) { 'bad' }
  let(:book_publish_date) { '2023-08-07' }
  let(:book) { Book.new(book_cover_state, book_publisher, book_publish_date) }


  # Test the initialization of the Book class
  describe '#initialize' do
    it 'creates a book with the correct cover state  and publisher' do
      expect(book.cover_state).to eq(book_cover_state)
      expect(book.publisher).to eq(book_publisher)
      expect(book.publish_date).to eq(book_publish_date)
    end
  end

  describe '#can_be_archived' do
    context 'when cover state is bad' do
      it 'returns true' do
        expect(book.can_be_archived).to be true
      end
    end

    context 'when cover state is good' do
      let(:book_cover_state) { 'good' }
      it 'returns true if published more than 10 years ago' do
        expect(book.can_be_archived?).to be false
      end

      it 'returns false if published less than 10 years ago' do
        book_publish_date = '2020-08-07'
        book = Book.new(book_cover_state, book_publisher, book_publish_date)
        expect(book.can_be_archived?).to be false
      end
    end
  end



  #   it 'returns false if published less than 10 years ago' do
  #     book_publish_date = (Date.today - 9.years).to_s
  #     book = Book.new(book_cover_state, book_publisher, book_publish_date)
  #     expect(book.can_be_archived?).to be false
  #   end
  # end
  # end
  # end
end

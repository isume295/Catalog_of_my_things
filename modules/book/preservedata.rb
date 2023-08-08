require 'json'

module PreserveData
  BOOK_FILE_NAME = 'data/book.json'.freeze
  LABEL_FILE_NAME = 'data/label.json'.freeze

  def save_to_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end

  def save_book
    books_hash = @books.map do |book|
      {
        cover_state: book.cover_state,
        publisher: book.publisher,
        publish_date: book.publish_date,
        id: book.id,
        label: book.label.title
      }
    end
    save_to_file(BOOK_FILE_NAME, books_hash)
  end

  def save_label
    label_hash = @label.map do |label|
      {
        id: label.id,
        color: label.color,
        title: label.title
      }
    end
    save_to_file(LABEL_FILE_NAME, label_hash)
  end
end

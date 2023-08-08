module AddBook
  def add_book
    publish_date = input_date
    publisher = input_publisher
    cover_state = input_cover_state
    book = Book.new(cover_state, publisher, publish_date)
    @books << book
    label = add_label(book)
    book.add_label(label)
    puts 'Book album Added Successfully'
    puts 'Press Enter to continue!'
    gets.chomp
  end

  def input_date
    puts 'Please Enter publish date in following format: yyyy/mm/dd'
    gets.chomp
  end

  def input_publisher
    puts 'Enter Publisher'
    gets.chomp
  end

  def input_cover_state
    puts 'Enter Cover state'
    gets.chomp
  end

  def add_label(book)
    puts 'Add a label'
    puts 'Enter Label Color'
    color = gets.chomp
    puts 'Enter Label title'
    title = gets.chomp
    label = Label.new(color, title, book.id)
    @label << label
    label
  end
end

module DisplayBook
  def display_books
    if @books.empty?
      puts 'No books availabel.'
    else
      @books.each_with_index do |book, index|
        label_title = book.label ? book.label.title : 'N/A'
        puts "#{index}) Publisher: #{book.publisher}, Publish Date: #{book.publish_date}, Label: #{label_title}"
      end
    end

    puts 'Press Enter to continue!'
    gets.chomp
  end
end

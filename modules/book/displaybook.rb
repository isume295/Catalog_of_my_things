module DisplayBook
  def display_books
    @books.each_with_index do |book, index|
      label_title = book.label ? book.label.title : 'N/A'
      puts "#{index}) Publisher: #{book.publisher}, Publish Date: #{book.publish_date} Lable: #{label_title}"
    end
    puts 'Press Enter to continue!'
    gets.chomp
  end
end

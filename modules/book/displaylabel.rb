module DisplayLabel
  def display_labels
    @label.each_with_index do |label, index|
      puts "#{index}) Label Title: #{label.title}, Label Color: #{label.color}"
    end
    puts 'Press Enter to continue!'
    gets.chomp
  end
end

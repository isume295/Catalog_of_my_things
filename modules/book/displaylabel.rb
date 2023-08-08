module DisplayLabel
  def display_labels
    if @label.empty?
      puts 'No labels available.'
    else
      @label.each_with_index do |label, index|
        puts "#{index}) Label Title: #{label.title}, Label Color: #{label.color}"
      end
    end

    puts 'Press Enter to continue!'
    gets.chomp
  end
end

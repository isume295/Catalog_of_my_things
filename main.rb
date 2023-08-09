require_relative 'app'

class Main
  def initialize
    @app = App.new
    prompt
  end

  def prompt
    puts 'Catalogue of things!'
    loop do
      display_options
      option = take_input
      if option >= 1 && option < 7
        @app.run_till6(option)
      else
        @app.run_more_than6(option)
      end
      break if option == 13
    end
  end

  def display_options
    puts 'Please choose one of the options: '
    puts '1. - List all books'
    puts '2. - List all music albums'
    puts '3. - List all movies'
    puts '4. - List all games'
    puts "5. - List all genres (e.g 'Comedy', 'Thriller')"
    puts "6. - List all labels (e.g. 'Gift', 'New')"
    puts "7. - List all authors (e.g. 'Stephen King')"
    puts "8. - List all sources (e.g. 'From a friend', 'Online shop')"
    puts '9. - Add book'
    puts '10. - Add a music album'
    puts '11. - Add movie'
    puts '12. - Add a game'
    puts '13. - Exit'
  end

  def take_input
    print 'Enter a number: '
    option = gets.chomp.to_i
    while option.nil? || option < 1 || option > 13
      puts 'Please enter a number between 1 and 4!'
      print 'Enter a number: '
      option = gets.chomp.to_i
    end
    option
  end
end

Main.new

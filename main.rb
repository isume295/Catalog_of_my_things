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
      @app.run(option)

      break if option == 13
    end
  end

  def display_options
    puts 'Please choose one of the options: '
    puts '1. - List all books'
    puts '3. - List all movies'
    puts '6. - List all labels'
    puts '8. - List all sources'
    puts '9. - Add book'
    puts '11. - Add movie'
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

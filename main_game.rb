require_relative 'app_game'

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

            break if option == 4
        end
    end

    def display_options
        puts 'Please choose one of the options: '
        puts '1. - List all games'
        puts '2. - List all authors'
        puts '3. - Add a game'
        puts '4. - Exit'
    end

    def take_input
        print 'Enter a number: '
        option = gets.chomp.to_i
        while option.nil? || option < 1 || option > 4
            puts 'Please enter a number between 1 and 4!'
            print 'Enter a number: '
            option = gets.chomp.to_i
        end
        option
    end
end

Main.new
require_relative 'classes/book/book'
require_relative 'classes/book/label'
require_relative 'modules/book/addbook'
require_relative 'modules/book/displaybook'
require_relative 'modules/book/displaylabel'

class App
  attr_accessor :books, :label

  include AddBook
  include DisplayBook
  include DisplayLabel

  def initialize
    @books = []
    @label = []
  end

  def run(option)
    case option
    when 1
      add_book
    when 2
      display_books
    when 3
      display_labels
    when 4
      puts option
    else
      puts 'Thank you for using this app!'
      exit
    end
  end
end

require_relative 'classes/book/book'
require_relative 'classes/book/label'
require_relative 'modules/book/addbook'
require_relative 'modules/book/displaybook'
require_relative 'modules/book/displaylabel'
require_relative 'modules/book/load_book_label'
require_relative 'modules/book/preservedata'

class App
  attr_accessor :books, :label

  include AddBook
  include DisplayBook
  include DisplayLabel
  include PreserveData
  include LoadData

  def initialize
    @books = []
    @label = []
    load_labels
    load_books
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
      puts 'Thank you for using this app!'
      save_and_exit
    else
      puts 'bye'
    end
  end

  def save_and_exit
    save_book
    save_label
    exit
  end
end

def list_options
  list = "
1- List books
2- List games
3- List movies
4- List music
5- Exit
"
  puts list
  gets.chomp
end

def switch(number)
  loop do
    case number
    when '1'
      puts 'option 1'
      number = list_options
    when '2'
      puts 'option 2'
      number = list_options
    when '3'
      puts 'option 3'
      number = list_options
    when '4'
      puts 'option 4'
      number = list_options
    else
      break
    end
  end
end

def main
  puts 'Welcome to School Library App!'
  number = list_options
  switch(number)
end

main

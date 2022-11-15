require './option'
require 'json'

def print_opt
  puts 'Welcome to OOP School Library App!'
  display_option = DisplayOption.new
  File.write('books.json', '[]') unless File.exist?('books.json')
  File.write('persons.json', '[]') unless File.exist?('persons.json')
  File.write('rental.json', '[]') unless File.exist?('rental.json')
  display_option.load
  loop do
    display_option.option
    ch = gets.chomp
    display_option.opt_cases(ch)
    if ch == '7'
      display_option.save
      break
    end
  end
end

print_opt

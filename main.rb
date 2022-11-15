require './option'
require 'json'

def print_opt
  puts 'Welcome to OOP School Library App!'
  display_option = DisplayOption.new
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

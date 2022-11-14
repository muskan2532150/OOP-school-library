require './option'

def print_opt
  puts 'Welcome to OOP School Library App!'
  display_option = DisplayOption.new
  loop do
    display_option.option
    ch = gets.chomp
    display_option.opt_cases(ch)
    break if ch == '7'
  end
end

print_opt

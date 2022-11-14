require './option'

def print_opt
  puts 'Welcome to OOP School Library App!'
  loop do
    option
    ch = gets.chomp
    opt_cases(ch)
    break if ch == '7'
  end
end

print_opt

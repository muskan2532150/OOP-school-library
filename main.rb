require './app.rb'

def print_opt
    puts "Please choose operation from the following"
    puts "1. List all books"
    puts "2. List all people"
    puts "3. Create a person"
    puts "4. Create a book"
    puts "5. Create a rental"
    puts "6. List all rental for given person id"
    puts "7. Exit"
    ch = gets.chomp

    case ch
    when '1'

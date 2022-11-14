require './app'

class DisplayOption
  def initialize
    @method = App.new
  end

  def option
    puts ''
    puts 'Please choose an option by entering a number: '
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List all rental for given person id'
    puts '7. Exit'
    puts ''
    print 'Your Choice: '
  end

  def create_person
    puts ''
    puts 'Do you want to create a student(1) or Teacher(2)? [Input the Number]'
    choice = gets.chomp
    case choice
    when '1'
      @method.create_student
    when '2'
      @method.create_teacher
    else
      puts 'Invalid choice'
    end
  end

  def opt_cases(char)
    case char
    when '1'
      @method.list_books
    when '2'
      @method.list_persons
    when '3'
      create_person
    when '4'
      @method.create_book
    when '5'
      @method.create_rentals
    when '6'
      @method.list_rentals
    when '7'
      puts ''
      print 'Thank you for using this App!!!'
    else
      puts ''
      print 'Invalid choice'
    end
  end
end

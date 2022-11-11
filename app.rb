require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App 
  def initialize
    @books=[]
    @rentals = []
    @person=[]
  end

    def create_book
        print "Title: "
        title=gets.chomp
        print "Author: "
        author=gets.chomp
        book=Book.new(title,author)
        @books.push(book) unless @books.include?(book)
        puts "Record is created successfully!!"
    end

    def create_student
        print 'Age: '
        age = gets.chomp

        print 'Classroom: '
        classroom = gets.chomp

        print 'Name: '
        name = gets.chomp
        
        print 'Has Parent Permission (true/false): '
        has_permission = gets.chomp

        student = Student.new(name,age.to_i,has_permission,classroom)
        @person.push(student) unless @person.include?(student)

        puts "Record is created successfully!!"
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    print 'Name: '
    name = gets.chomp

    teacher = Teacher.new(name,age.to_i,nil,specialization)
    @person.push(teacher) unless @person.include?(teacher)

    puts "Record is created successfully!! "
  end

  def list_books
    if @books.length.zero?
      puts "No book found" 
    else
      puts ""
      @books.each_with_index do |book,index|
        puts "#{index}) Title: #{book.title}   Author: #{book.author}" 
      end
    end
  end

  def list_persons
    if @person.length.zero?
      puts "No person detail found"
    else
      puts ""
      @person.each_with_index do |persons,index|
        puts "#{index}) [Student] Name: #{persons.name} ID: #{persons.id} AGE: #{persons.age}"  if persons.is_a?(Student)
        puts "#{index}) [Teacher] Name: #{persons.name} ID: #{persons.id} AGE: #{persons.age}"  if persons.is_a?(Teacher)
        end
      end
    end

  def list_rentals
   if @rentals.length.zero?
    puts "No rental found for books" 
   else
    puts ""
    print "ID of a person: "
    id= gets.chomp
    @rentals.each do |rental|
      if rental.person.id.to_i == id.to_i
        puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author}"
        else
          puts "No rental found, Please create record"
        end
    end
    end
  end

  def create_rentals
    puts "Select a book from following list by number"
    list_books
    ch=gets.chomp.to_i
    puts "Select a person with the following list by number"
    list_persons
    selected_people=gets.chomp.to_i
    puts ''
    print "Date: "
    date=gets.chomp.to_i
    rental = Rental.new(date,@person[selected_people],@books[ch])
    @rentals.push(rental) unless @rentals.include?(rental)
    puts "Record is created successfully!!"
  end
end

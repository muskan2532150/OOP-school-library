module CreateElement
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book) unless @books.include?(book)
    puts 'Record is created successfully!!'
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
    student = Student.new(name, age.to_i, has_permission, classroom)
    @person.push(student) unless @person.include?(student)
    puts 'Record is created successfully!!'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    print 'Name: '
    name = gets.chomp
    teacher = Teacher.new(name, age.to_i, nil, specialization)
    @person.push(teacher) unless @person.include?(teacher)
    puts 'Record is created successfully!! '
  end

  def create_rentals
    puts 'Select a book from following list by number'
    list_books
    ch = gets.chomp.to_i
    puts 'Select a person with the following list by number'
    list_persons
    selected_people = gets.chomp.to_i
    puts ''
    print 'Date: '
    date = gets.chomp
    rental = Rental.new(date, @person[selected_people], @books[ch])
    @rentals.push(rental) unless @rentals.include?(rental)
    puts 'Record is created successfully!!'
  end
end

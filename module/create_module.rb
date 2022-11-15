module CreateElement
  def inputs(show)
    outputs = []
    show.each do |s|
      print s
      outputs.push(gets.chomp)
    end
    outputs
  end

  def create_book
    outputs = inputs(['Title: ', 'Author: '])
    book = Book.new(outputs[0], outputs[1])
    @books.push(book) unless @books.include?(book)
    puts 'Record is created successfully!!'
  end

  def create_student
    outputs = inputs(['Age: ', 'Classroom: ', 'Name: ', 'Has Parent Permission (true/false): '])
    student = Student.new(outputs[2], outputs[0].to_i, outputs[3], outputs[1])
    @person.push(student) unless @person.include?(student)
    puts 'Record is created successfully!!'
  end

  def create_teacher
    outputs = inputs(['Age: ', 'Specialization: ', 'Name: '])
    teacher = Teacher.new(outputs[2], outputs[0].to_i, nil, outputs[1])
    @person.push(teacher) unless @person.include?(teacher)
    puts 'Record is created successfully!! '
  end

  def create_rentals
    puts 'Select a book from following list by number'
    list_books
    return unless @books != []

    ch = gets.chomp.to_i
    puts 'Select a person with the following list by number'
    list_persons
    selected_people = gets.chomp.to_i
    puts ''
    date = inputs(['Date: '])
    rental = Rental.new(date, @person[selected_people], @books[ch])
    @rentals.push(rental) unless @rentals.include?(rental)
    puts 'Record is created successfully!!'
  end
end

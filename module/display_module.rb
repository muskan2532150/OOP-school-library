module DisplayAll
  def read_book
    book = []
    File.read('./JSON/store.json')
  end

  def store(_obt, bk)
    outputs = []
    bk.each do |s|
      puts s[0]
      # obj.new(bk[])
      # outputs.push(gets.chomp)
    end
    outputs
  end

  def list_books
    bk = JSON.parse(read_book)
    store(BOOk, bk)
    if @books.length.zero?
      puts 'No book found'
    else
      puts ''
      @books.each_with_index do |book, index|
        puts "#{index}) Title: #{book.title}   Author: #{book.author}"
      end
    end
  end

  def list_persons
    if @person.length.zero?
      puts 'No person detail found'
    else
      puts ''
      @person.each_with_index do |persons, index|
        puts "#{index}) [Student] Name: #{persons.name} ID: #{persons.id} AGE: #{persons.age}" if persons.is_a?(Student)
        puts "#{index}) [Teacher] Name: #{persons.name} ID: #{persons.id} AGE: #{persons.age}" if persons.is_a?(Teacher)
      end
    end
  end

  def list_rentals
    if @rentals.length.zero?
      puts 'No rental found for books'
    else
      puts ''
      print 'ID of a person: '
      id = gets.chomp
      @rentals.each do |rental|
        if rental.person.id.to_i == id.to_i
          puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author}"
        else
          puts 'No rental found, Please create record'
        end
      end
    end
  end
end

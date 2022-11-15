require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

require_relative 'display_module'
require_relative 'create_module'
require 'json'

class App
  include DisplayAll
  include CreateElement
  def initialize
    @books = []
    @rentals = []
    @person = []
  end

  def load
    ## Load books
    file_data = File.read('books.json')
    books = JSON.parse(file_data)
    books.each do |book|
      @books.push(Book.new(book['Title'], book['Author']))
    end 
    ## Load person
    file_data = File.read('persons.json')
    persons = JSON.parse(file_data)
    persons.each do |person|
      if(person['role'] == 'Student')
        @person.push(Student.new(person['name'], person['age'], person['parent_permission'], person['classroom']))
      else
        @person.push(Teacher.new(person['name'], person['age'], person['parent_permission'], person['specialization']))
      end
    end
  end

  def save
    # #save books
    books = []
    @books.each { |book| books.push({ 'Title' => book.title, 'Author' => book.author }) }
    File.open('books.json', 'w') { |f| f.puts books.to_json }

    # #save persons
    persons = []
    @person.each do |person|
      if person.instance_of?(::Student)
        persons.push({ 'name' => person.name, 'age' => person.age, 'parent_permission' => person.parent_permission,
                       'classroom' => person.classroom, 'role' => 'Student' })
      else
        persons.push({ 'name' => person.name, 'age' => person.age, 'parent_permission' => person.parent_permission,
                       'specialization' => person.specialization, 'role' => 'Teacher' })
      end
    end
    File.open('persons.json', 'w') { |f| f.puts persons.to_json }
  end
end

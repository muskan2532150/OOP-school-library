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
    file_data = File.read('books.json')
    books = JSON.parse(file_data)
    books.each do |book|
      @books.push(Book.new(book['Title'], book['Author']))
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
                       'classroom' => person.classroom })
      else
        persons.push({ 'name' => person.name, 'age' => person.age, 'parent_permission' => person.parent_permission,
                       'specialization' => person.specialization })
      end
    end
    File.open('persons.json', 'w') { |f| f.puts persons.to_json }
  end
end

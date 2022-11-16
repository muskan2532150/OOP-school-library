require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

require_relative 'display_module'
require_relative 'create_module'

class App
  include DisplayAll
  include CreateElement
  
  def initialize
    @books = []
    @rentals = []
    @person = []
    @rental_data=[]
  end

  def store_all_data
    book_data=[]
    @books.each do |bk|
      book_data.push({"title"=>bk.title,"author"=>bk.author})
    end
    File.write('./JSON/book.json',book_data.to_json)

    person_data=[]
    @person.each do |pk|
      person_data.push({"Age"=>pk.age, "Classroom"=>pk.Classroom, "Name"=>pk.name,"Has Parent Permission"=>pk.parent_permission}) if pk.is_a(Student)
      person_data.push({"Age"=>pk.age, "Specialization"=>pk.specialization, "Name"=>pk.name,"Has Parent Permission"=>pk.parent_permission}) if pk.is_a(Teacher)
    end
    File.write('./JSON/person.json',person_data.to_json)
    File.write('./JSON/rental.json',@rental_data.to_json)
  end

  def read_all_data
    bk=File.read("./JSON/book.json")
    bk=JSON.parse(bk)
    bk.each do |book|
      @books.push(Book.new(book["title"],book["author"]))
    end

    pk=File.read("./JSON/book.json")
    pk=JSON.parse(bk)
    pk.each do |person|
      @person.push(Student.new(person["name"],person["age"],person["parent_permission"],person["classroom"])) if person.key?("Classroom")
      @person.push(Teacher.new(person["name"],person["age"],person["parent_permission"],person["specialization"])) if person.key?("specialization")
    end
  end

end

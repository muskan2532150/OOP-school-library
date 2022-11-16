#  require_relative './module/nameable'
#  require './module/decorator'
#  require './module/capitalize_decorator'
 require './module/book'
#  require './module/display_module'
#  require './module/create_module'
 require './module/rental'
#  require './module/person'
#  require './module/app'
#  require './module/teacher'
require 'rspec'

describe Book do 
  book = Book.new("Crime and punishment", "Dostovsky")

    context "testing Book class" do
      it "should initialize a new Book object" do
        expect(book.title).to eq "Crime and punishment"
      end
    end

    it "Book Rental Method" do
    person=double('person')
    allow(person).to receive(:rentals){[]}
    book.add_rental(person,"1/1/111")
    expect(book.rentals.length).to be(1) 
    end
end

# describe CapitalizeDecorator do
#     context "When testig the CapitalizeDecorator class" do
#       it "should capitalize the word it accepts" do
#         capitalize_decorator = CapitalizeDecorator.new
#         capitalized = capitalize_decorator.correct_name('stephen')
#         expect(capitalized).to eq 'Stephen'   
#       end 
#     end
# end
  

# describe Student do 
#     it "Check for book object" do
#         @book = 
#     end
# end

# describe Teacher do 
#     it "Check for book object" do
#         @book = Teacher.new("aa",1,true,"a")
#         expect(@book.specialization).to eq("a")
#     end
# end


# describe App do 
#     it "Check for book object array" do
#         app= App.new()
#         puts @books
#         expect(@books).to be == []
#     end
# end


# describe Rental do 
#     book = Book.new("Crime and punishment", "Dostovsky")
#     person=Teacher.new("aa",1,true,"a")
#     rental = Rental.new("1/1/1111",person,book)
#     it "Check for Rental object" do
#         expect(rental.date).to eq("1/1/1111")
#     end

#     it "Check for rental array" do
#         rentals=[]
#         rentals.push(rental)
#         expect(rentals).not_to be_empty
#     end
# end

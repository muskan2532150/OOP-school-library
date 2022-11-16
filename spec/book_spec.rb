# require_relative './module/nameable'
require './module/book'
#  require './module/rental'

describe Book do
  book = Book.new('Crime and punishment', 'Dostovsky')

  context 'testing Book class' do
    it 'should initialize a new Book object' do
      expect(book.title).to eq 'Crime and punishment'
    end
  end

  it 'Book Rental Method' do
    person = double('person')
    allow(person).to receive(:rentals) { [] }
    book.add_rental(person, '1/1/111')
    expect(book.rentals.length).to be(1)
  end
end

# describe Rental do
#     book = Book.new("Crime and punishment", "Dostovsky")
#     person=Teacher.new("aa",1,true,"a")
#     rental = Rental.new("1/1/1111",person,book)
#     it "Check for Rental object" do
#         expect(rental.date).to eq("1/1/1111")
#     end

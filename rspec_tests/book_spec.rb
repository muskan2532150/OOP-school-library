require './book'
require './rental'

describe Book do
  context 'test add_rental method' do
    it 'the renatals array should have length of 2 after add_rental is called twice' do
      person = double('person')
      allow(person).to receive(:rentals) { [] }
      person2 = double('person2')
      allow(person2).to receive(:rentals) { [] }
      book = Book.new('Rich dad poor dad', 'Robert')
      book.add_rental(person, '2020/9/9')
      book.add_rental(person2, '2020/9/9')
      number_of_rentals = book.rentals.length
      expect(number_of_rentals).to eq 2
    end
  end
end

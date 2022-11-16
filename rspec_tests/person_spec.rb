require './person'
require './rental'

describe Person do
  context 'test add_rental method' do
    it 'the renatals array should have length of 1 after add_rental is called' do
      book = double('book')
      allow(book).to receive(:rentals) { [] }
      person = Person.new('Alex', 30, true)
      person.add_rental(book, '2020/9/9')
      number_of_rentals = person.rentals.length
      expect(number_of_rentals).to eq 1
    end
  end
  context 'test correct_name method' do
    it 'should return Alex' do
      person = Person.new('Alex', 30, true)
      name = person.correct_name
      expect(name).to eq 'Alex'
    end
  end
  context 'test can_use_services? method' do
    it 'should return Alex' do
      person = Person.new('Alex', 30, true)
      permission = person.can_use_services?
      expect(permission).to eq true
    end
  end
end

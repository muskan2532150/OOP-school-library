require './rental'
require 'rspec'

describe Rental do
  context 'test initialize rental' do
    it 'initializes rental class' do
      person = double('person')
      allow(person).to receive(:rentals) { [] }
      book = double('book')
      allow(book).to receive(:rentals) { [] }
      rental = Rental.new('2022/11/16', person, book)
      expect(rental.date).to eq '2022/11/16'
    end
  end
end

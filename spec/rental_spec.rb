require './module/rental'

describe Rental do
  it 'initailze method' do
    person = double('person')
    allow(person).to receive(:rentals) { [] }
    book = double('double')
    allow(book).to receive(:rentals) { [] }

    rental = Rental.new('3/3/3333', person, book)

    expect(rental.date).to eq('3/3/3333')
  end
end

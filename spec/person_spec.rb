require './module/person'
require 'rspec'

describe Person do
    person = Person.new("muskan",1,true)
 
    it "Check for Person object" do
        expect(person.name).to eq("muskan")
    end

    it "Rental for person" do
        book=double('book')
        allow(book).to receive(:rentals){[]}
        person.add_rental(book,"2/2/2222")
        expect(person.rentals.length).to be(1)
    end

    it "can use sevice method" do
      sevice=person.can_use_services?
      expect(sevice).to be(true)
    end

    it "of age method" do
        age=person.send(:of_age?)
        expect(age).to be(false)
    end

    it "correct name method" do
        name=person.correct_name
        expect(name).to eq("muskan")
    end
end


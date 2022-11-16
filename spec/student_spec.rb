require './module/student'
require './module/person'
require 'rspec'

describe Student do
    student = Student.new("muskan",1,true,"A")
 
    it "Check for student object" do
     expect(student.classroom).to eq("A")    end

    it "Rental for person" do
        book=double('book')
        allow(book).to receive(:rentals){[]}
        person.add_rental(book,"2/2/2222")
        expect(person.rentals.length).to be(1)
    end

    it "can use sevice method" do
      string=student.play_hooky
      expect(string).to eq('¯(ツ)/¯')
    end

    it "
end



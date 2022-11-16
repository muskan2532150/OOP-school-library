require './student'

describe Student do
  context 'Test play_hooky method' do
    it 'some test' do
      student = Student.new('John', 15, true, 'classroom')
      expect(student.play_hooky).to eql '¯(ツ)/¯'
    end
  end
end

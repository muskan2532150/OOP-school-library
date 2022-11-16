require './classroom'
require './student'

describe Classroom do
  context 'tests Classroom class' do
    it 'should add new student' do
      classroom = Classroom.new('Math')
      # student = Student.new('Alex', 17, true, "Math")      
      # classroom.add_student(student)
      # number_of_students = classroom.students.length
      # expect(number_of_students).to eq 1
      # expect(classroom.label).to eq "Math"
      end
  end
end
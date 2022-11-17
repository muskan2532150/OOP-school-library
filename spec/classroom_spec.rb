require './module/student'
require './module/classroom'

describe Classroom do
  it 'add student method' do
    classroom=Classroom.new('Math')
    student=Student.new("aa",1,true,"a")
    classroom.add_student(student)
    expect(classroom.student.length).to be(1)
  end
end

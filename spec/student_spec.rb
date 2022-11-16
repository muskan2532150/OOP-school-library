require './module/student'
require './module/person'
require 'rspec'

describe Student do
  student = Student.new('muskan', 1, true, 'A')

  it 'Check for student object' do
    expect(student.classroom).to eq('A')
  end

  it 'can use sevice method' do
    string = student.play_hooky
    expect(string).to eq('¯(ツ)/¯')
  end
end

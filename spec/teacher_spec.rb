require './module/person'
require './module/teacher'

describe Teacher do
  teacher = Teacher.new('Alex', 30, true, 'math')
  context 'test can_use_services? method' do
    it 'should return true' do
      permission = teacher.can_use_services?
      expect(permission).to eq true
    end
  end
end

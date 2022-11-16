require './module/decorator'

describe Decorator do
  it 'correct_name method ' do
    nameable = double('muskan')
    allow(nameable).to receive(:correct_name) { 'muskan' }
    decorator = Decorator.new(nameable)
    name = decorator.correct_name
    expect(name).to eq('muskan')
  end
end

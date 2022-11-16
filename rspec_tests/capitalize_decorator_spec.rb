require './capitalize_decorator'

describe CapitalizeDecorator do
  it 'correct_name method ' do
    person = double('muskan')
    allow(person).to receive(:correct_name) { 'muskan' }
    capitalize_decorator = CapitalizeDecorator.new(person)
    name = capitalize_decorator.correct_name
    expect(name).to eq('Muskan')
  end
end

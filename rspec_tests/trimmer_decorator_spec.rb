require './trimmer_decorator'

describe TrimmerDecorator do
  it 'correct_name method ' do
    name = double('muskan Gupta')
    allow(name).to receive(:correct_name) { 'muskan Gupta' }
    trimmer_decorator = TrimmerDecorator.new(name)
    string = trimmer_decorator.correct_name
    expect(string).to eq('muskan Gup')
  end
end

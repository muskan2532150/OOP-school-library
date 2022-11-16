require './nameable'

describe Nameable do
  it 'should raise error' do
    nameable = Nameable.new
    expect { nameable.correct_name }.to raise_error(NotImplementedError)
  end
end

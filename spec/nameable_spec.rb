require './module/nameable'

describe Nameable do
    it "correct name method" do
        name=Nameable.new
        expect{name.correct_name}.to raise_error(NotImplementedError)
    end
end
require_relative "./fizzbuzz.rb"

RSpec.describe FizzBuzz do
  let(:fizzbuzz) { FizzBuzz.new }

  describe "#fizzbuzz method" do 
    it "should return fizzbuzz if its a multiple of 3 and 5" do
      expect(fizzbuzz.convert(15)).to eq("fizzbuzz")
    end

    it "should return the number when not a multiple of 3 nor 5" do
      expect(fizzbuzz.convert(1)).to eq(1)
    end

    it "should return fizz if its multiple of 3" do
      expect(fizzbuzz.convert(6)).to eq("fizz")
    end
    
    it "should return buzz if its a multiple of 5" do
      expect(fizzbuzz.convert(10)).to eq("buzz")
    end
  end
end
require_relative "./lexiconomitron.rb"
RSpec.describe Lexiconomitron do

@lexi = Lexiconomitron.new
  describe Lexiconomitron do 
    describe "#eat_t" do
      it "removes every letter t from the input" do
        expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
      end      
    end

    describe "#shazam" do
      it "should take an array of words and reverse the order of the letters of each word &&
          should return only the first and the final word" 
        expect(@lexi.shazam(["I", "am", "the", "array"])).to eq("I", "yarra")        
      end
    end
  end
end
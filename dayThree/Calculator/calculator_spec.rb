
require_relative "./calculator.rb"

RSpec.describe StringCalculator do

	before do
		puts "I am in the before block!"
		@calculator = StringCalculator.new
	end

	describe "#add method" do
		it "should return 0 when adding empty string" do
			expect(@calculator.add("")).to eq(0)
		end

		it "should return the number when adding string with one number" do
			expect(@calculator.add("1")).to eq(1)
		end

		it "should add two numbers together" do
			expect(@calculator.add("1,4")).to eq(5)
		end

		it "should add three numbers together" do
			expect(@calculator.add("1,4,4")).to eq(9)
		end

		it "should add more than three numbers together" do
			expect(@calculator.add("1,4,5,6,4")).to eq(20)
		end
	end

	describe "#multiply method" do
		it "return nil with empty string" do
			expect(@calculator.multiply("")).to eq(nil)
		end

		it "return nil with string 0" do
			expect(@calculator.multiply("0")).to eq(nil)
		end

		it "return the number with string of one number" do
			expect(@calculator.multiply("3")).to eq(3)
		end

		it "should multiply two numbers together" do
			expect(@calculator.multiply("2,3")).to eq(6)
		end

		it "should ignore 0 and multiply the rest " do
			expect(@calculator.multiply("3,1,0")).to eq(3)
		end

		it "should multiply three numbers together" do
			expect(@calculator.multiply("2,3,4")).to eq(24)
		end

		it "should multiply more than three numbers together" do
			expect(@calculator.multiply("2,3,4,2,1")).to eq(48)
		end
	end
end

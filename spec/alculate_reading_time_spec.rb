require 'alculate_reading_time'

RSpec.describe "calculate_reading_time method" do
  context "given an empty string" do 
    it "return zero" do
    result = calculate_reading_time("")
    expect(result).to eq 0
    end
  end 

  context "given a test of under two hundred words" do 
    it "returns one" do 
      result = calculate_reading_time("one two")
      expect(result).to eq 1
    end
  end

  context "given a test of two hundred words" do 
    it "returns one" do 
      result = calculate_reading_time("one " * 200)
      expect(result).to eq 1
    end
  end

  context "given a test of three hundred words" do 
    it "returns two" do 
      result = calculate_reading_time("one " * 400)
      expect(result).to eq 2
    end
  end

  context "given a test of five thousand words" do 
    it "returns tenty five" do 
      result = calculate_reading_time("one " * 5000)
      expect(result).to eq 25
    end
  end
end 
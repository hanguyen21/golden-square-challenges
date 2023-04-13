#A method called count_words that takes 
#a string as an argument and returns the 
#number of words in that string
require "count_words"

RSpec.describe "count_words" do
  it "given an empty string" do 
     result = count_words("")
     expect(result).to eq (0)
  end

  it "given a string, returns the number of words" do
    result = count_words("one two three")
    expect(result).to eq (3)
  end
  

  it "given a string, returns the number of words" do
    result = count_words("o ab count one two")
    expect(result).to eq (5)
  end



end
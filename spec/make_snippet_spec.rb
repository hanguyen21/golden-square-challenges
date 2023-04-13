#A method called make_snippet that takes a string 
#as an argument and returns the first five words 
#and then a '...' if there are more than that.
require 'make_snippet'

RSpec.describe "make_snippet" do
 it "given a short string, returns the first five words" do
 result = make_snippet("one two three four")
 expect(result).to eq "one two three four"
 end

 it "given a long string, returns the first five words" do
   result = make_snippet("one two three four five six seven")
   expect(result).to eq "one two three four five ..."
 end

 it "given an empty string" do 
    result = make_snippet("")
    expect(result).to eq ""
 end
end

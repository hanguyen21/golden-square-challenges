require "fizzbuzz"

RSpec.describe "fizzbuzz" do
 it "for the ordinary number it returns the number" do
   result = fizzbuzz(1)
   expect(result).to eq 1
 end
 
 it "return Fizz if num is divisible by 3" do 
   result = fizzbuzz(3)
   expect(result).to eq "Fizz"
 end

 it "return Buzz if the number is divisible by 5" do 
   result = fizzbuzz(5)
   expect(result).to eq "Buzz"
 end

 it "return FizzBuzz if the number is divisible by 15" do
   result = fizzbuzz(15)
   expect(result).to eq "FizzBuzz" 
end

end
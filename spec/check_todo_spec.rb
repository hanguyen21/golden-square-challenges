require "check_todo"

RSpec.describe "check_todo method" do 
    context "given an empty string" do
        it "fails" do 
          expect{check_todo("")}.to raise_error "Not a sentence."
        end
       end


    context "given a string with #TODO" do
        it "returns true" do 
          result = check_todo("#TODO :buy eggs and milk")
          expect(result).to eq true
        end
       end

    context "given a string without #TODO" do
        it "returns false" do 
          result = check_todo("buy eggs and milk")
          expect(result).to eq false
        end
    end

    context "given a string with #TODO in the middle" do
        it "returns true" do 
          result = check_todo("I need #TODO buy eggs and milk")
          expect(result).to eq true
        end
    end

    context "given a string with todo as part of another word" do
        it "returns false" do 
          result = check_todo("there is a todolist")
          expect(result).to eq false
        end
    end

    context "given a string with #todo in lowercaswe" do
        it "returns true" do 
          result = check_todo("I need #todo buy eggs and milk")
          expect(result).to eq true
        end
    end
end
require "grammar_stats"

RSpec.describe GrammarStats do 
 it "constructs" do 
    grammar_stats = GrammarStats.new 
    result = grammar_stats.check("Hello.")
    expect(result).to eq true
 end 

 describe "#check" do 
   context "given an empty string" do
    it "fails" do
        grammar_stats = GrammarStats.new 
        expect {grammar_stats.check("")}.to raise_error "Not a sentence."
    end
   end
 end
    describe "#percentage_good" do
      context "given two texts" do 
         it "return 50%" do 
            grammar_stats = GrammarStats.new 
            grammar_stats.check("Hello.")
            grammar_stats.check("Hello")
            expect(grammar_stats.percentage_good).to eq 50
         end
      end 
      context "given no true result" do
        it "fails" do
          grammar_stats = GrammarStats.new
          expect{ grammar_stats.percentage_good}.to raise_error "There is no true result"
        end
      end
 
      context "given four texts" do 
        it "return 75%" do 
           grammar_stats = GrammarStats.new 
           grammar_stats.check("Hello.")
           grammar_stats.check("Hello")
           grammar_stats.check("Hello word.")
           grammar_stats.check("Hello word, this is Kat!")
           expect(grammar_stats.percentage_good).to eq 75
         end
      end 
    end 



end
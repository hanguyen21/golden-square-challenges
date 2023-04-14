require 'grammar'

RSpec.describe "check_grammar method" do 
  context "given an empty string" do
    it "fails" do 
     expect{ check_grammar("")}.to raise_error "Not a sentence."
    end
  end

  context "given a sentence with a capital letter and full stop" do
    it "true" do 
    result = check_grammar("Hello world.")
     expect(result).to eq true
    end
  end

  context "given a sentence with only a capital letter" do
    it "false" do 
    result = check_grammar("Hello world")
     expect(result).to eq false
    end
  end

  context "given a sentence with only a full stop" do
    it "false" do 
    result = check_grammar("hello world.")
     expect(result).to eq false
    end
  end

  context "given a sentence with a capital letter, mixed cases and full stop" do
    it "true" do 
    result = check_grammar("HELLO world.")
     expect(result).to eq true
    end
  end

  context "given a sentence with a capital letter and comma at the end" do
    it "false" do 
    result = check_grammar("Hello world,")
     expect(result).to eq false
    end
  end

  context "given a sentence with a capital letter and exclamation mark" do
    it "true" do 
    result = check_grammar("Hello word!")
     expect(result).to eq true
    end
  end

  context "given a sentence with a capital letter and question mark" do
    it "true" do 
    result = check_grammar("Hello word?")
     expect(result).to eq true
    end
  end

end
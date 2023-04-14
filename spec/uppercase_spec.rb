require 'uppercase'

RSpec.describe "extract_uppercase" do 
 it "returns only the uppercase words given a string with mixed words" do 
 result = extract_uppercase("hello WORLD")
 expect(result).to eq ["WORLD"]
 end
 
 it "returns an empty list if string has no uppercase words" do 
    result = extract_uppercase("hello world")
    expect(result).to eq []
    end

    it "returns an empty list if string has no uppercase words" do 
        result = extract_uppercase("hello WoRLD")
        expect(result).to eq []
    end

    it "returns the uppercase words given a string with mixed words" do 
        result = extract_uppercase("hello WORLD!")
        expect(result).to eq ["WORLD"]
    end

    it "fails" do 
        expect {extract_uppercase(nil) }.to raise_error "Nothing there"
    end

end

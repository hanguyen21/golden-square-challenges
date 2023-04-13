require "e_extractor"

RSpec.describe "e_extractor method" do 
  
  it "given an empty string, it return an epmty" do
    result = e_extractor("")
    expect(result).to eq ""
  end

  it "given a string without any es, return the same string" do 
    result = e_extractor("homnaytroi")
    expect(result).to eq "homnaytroi"
  end

  it "give a string with an e, brings that to the start" do
    result = e_extractor("hello")
    expect(result).to eq "ehllo"
  end

  it "give a tring with multiple es , brings them to the start" do
    result = e_extractor("heeello")
    expect(result).to eq "eeehllo"
  end

  it "give a tring with multiple es , brings them to the start" do
    result = e_extractor("eeelloe")
    expect(result).to eq "eeeello"
  end
end
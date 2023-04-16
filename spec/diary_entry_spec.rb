require "diary_entry"

RSpec.describe DiaryEntry do
 it "constructs" do 
  dairy_entry = DiaryEntry.new("my_title", "my_contents")
  expect(dairy_entry.title).to eq "my_title"
  expect(dairy_entry.contents).to eq "my_contents"
 end

 describe "#count_words" do 
   it "returns the number of words in the content" do
    dairy_entry = DiaryEntry.new("my_title", "some contents here")
    expect(dairy_entry.count_words).to eq 3
   end

   it "returns zero ehrn contents is empty" do
    dairy_entry = DiaryEntry.new("my_title", "")
    expect(dairy_entry.count_words).to eq 0
   end
 end

 describe "#reading_time" do 
   context "given a wpm of some sensible number(200)" do
      it "returns the ceiling of the number of minutes it takes to read the contents" do
        dairy_entry = DiaryEntry.new("my_title", "one " * 550)
        expect(dairy_entry.reading_time(200)).to eq 3
      end
    end

    context "given a wpm of 0" do
        it "fails" do
          dairy_entry = DiaryEntry.new("my_title", "one two three")
          expect{ dairy_entry.reading_time(0)}.to raise_error "Reading speed must be above zero"
        end
      end
 end

 describe "#reading_chunk" do 
   context "with a text readable within the given minutes" do 
     it "returns a full text" do
        dairy_entry = DiaryEntry.new("my_title", "one two three")
        chunk = dairy_entry.reading_chunk(200,1)
        expect(chunk).to eq "one two three"
     end 
   end

   context "with a text readable within the given minutes" do 
    it "returns a readable chunk" do
       dairy_entry = DiaryEntry.new("my_title", "one two three")
       chunk = dairy_entry.reading_chunk(2,1)
       expect(chunk).to eq "one two"
    end 

    it "returns the next chunk, next time if we are asked" do
        dairy_entry = DiaryEntry.new("my_title", "one two three")
        dairy_entry.reading_chunk(2,1)
        chunk = dairy_entry.reading_chunk(2,1)
        expect(chunk).to eq "three"
     end 

     it "restarts after reading the whole contents" do
        dairy_entry = DiaryEntry.new("my_title", "one two three")
        dairy_entry.reading_chunk(2,1)
        dairy_entry.reading_chunk(2,1)
        chunk = dairy_entry.reading_chunk(2,1)
        expect(chunk).to eq "one two"
     end 

     it "restarts if it finishes exactly on the end" do
        dairy_entry = DiaryEntry.new("my_title", "one two three")
        dairy_entry.reading_chunk(2,1)
        dairy_entry.reading_chunk(1,1)
        chunk = dairy_entry.reading_chunk(2,1)
        expect(chunk).to eq "one two"
     end 
     
  end


 end


end
def get_most_common_letter(text)
  counter = Hash.new(0) #create a new hash{}

  
      text.chars.each do |char|
  #text.split.join.chars.each do |char|
   
    counter[char] += 1
  end
  p counter.to_a.sort_by { |k, v| v }
  p counter.to_a.sort_by { |k, v| v }[-2]


  p counter.to_a.sort_by { |k, v| v }[-2][0]
  counter.to_a.sort_by { |k, v| v }[-1][0]
  #counter.to_a.sort_by { |k, v| v }[-1][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
p get_most_common_letter("the roof, the roof, the roof is on fire!")
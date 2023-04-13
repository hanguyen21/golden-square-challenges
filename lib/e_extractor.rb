def e_extractor(str)
 
    letter = str.chars
    e_letter = letter.select {|i| i == "e"}.join
    non_e_letter = letter.select {|i| i != "e"}.join
    return e_letter + non_e_letter
   
end
def check_grammar(text)
  fail "Not a sentence." if text.empty?
  text[0] == text[0].upcase && ((text[-1].include? (".")) || (text[-1].include? ("!")) || (text[-1].include? ("?")))
  
end 
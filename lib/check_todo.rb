def check_todo(text)
fail "Not a sentence." if text.empty?
(text.include? ("#TODO")) || (text.include? ("#todo"))

end
def extract_uppercase(text)
  fail "Nothing there" if text.nil?

  words = text.split

  uppercase_words = words.select do |word|
    word == word.upcase 
  end

  uppercase = uppercase_words.map do |word|
    word.gsub(/\W/, '')
  end

  return uppercase
end
def encode(plaintext, key)
    #key.chars coverts the string into an array
    #uniq method returns a new array by removing duplicate 
    #(('a'...'z').to_a - key.chars) all lowercase letters except for those in key string
   
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    # "we have cipher array (#{cipher})"
    #plaintext.chars.map: loop will iterate over each char in "plaintext" string and map it 
    #
    #.chr method: covert this ASCII code back into a character 
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    ciphertext_chars.join 
    

end
  
def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[(65 - char.ord).abs]
    end
    return plaintext_chars.join
end



p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p  "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p "theswiftfoxjumpedoverthelazydog"



  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"
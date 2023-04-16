class GrammarStats
    def initialize
      @num_good = 0
      @num_checked = 0
    end
  
    def check(text)
      @num_checked += 1

      fail "Not a sentence." if text.empty?
      first_char = text[0]
      last_char = text[-1]
      has_capital = first_char == first_char.upcase
      has_punctuation = [".", "?", "!"].include?(last_char)
  
      if has_capital && has_punctuation
        @num_good += 1
        return true
      else
        return false
      end
    end
  
    def percentage_good
       fail "There is no true result" if @num_good == 0
      return (@num_good.to_f / @num_checked * 100).to_i
    end
end
  
def make_snippet(str)
    words = str.split
    if words.length > 5
        return words.first(5).join(" ") + (" ...")
        
    else
     return str
    end
    
    

end
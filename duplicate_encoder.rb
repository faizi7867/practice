# Duplicate Encoder
# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))((" 
def duplicate_encode(word)
    ar = []
    a = word.downcase.chars  #shorthand for str.each_char.to_a.
    a.each do |c| 
        if word.downcase.count(c) > 1
            ar.append(")")
        else
            ar.append("(")
        end
    end

return ar.join
end

duplicate_encode("din")





def echo word
    return word
end

def shout word
    return word.upcase
end

def repeat word, num = 2
        return word + (" " + word) * (num-1)
end

def start_of_word word, num
    return word[0, num]
end

def first_word word
    return word[0, word.index(" ")]
end

def titleize word
    split_word = word.split(" ")
    first = 0
    split_word.each do |value|
        if !(['and', 'the', 'over'].include? value) || first == 0
        value.capitalize!
        end
        first += 1
    end
    word = split_word.join(" ")
    return word
end
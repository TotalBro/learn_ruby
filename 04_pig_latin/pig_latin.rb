def translate word
    words = word.split(" ")
    index = 0
    words.each do |value|
        if value.start_with?(/[aeio]/)
        value << 'ay'
        elsif value.start_with?('u')
            if value.end_with? ('q')
                holdword = value[1..-1].concat(value.chr)
                value = translate holdword
                words[index] = value
            else 
                value << 'ay'
            end
        elsif value.start_with?(/[b-df-hj-np-tv-z]/)
         holdword = value[1..-1].concat(value.chr)
         value = translate holdword
         words[index] = value
        end
        index += 1
    end
    words.join(" ")
end

translate 'banana'
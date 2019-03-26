class Book
    attr_reader :title

    def title=(title)
        words = title.split(' ')
        new_title = ''
        index = 0
        words.each do |value|
            if ((['a', 'an', 'the', 'of', 'and', 'in'].include? value) && index!= 0)
                new_title << (value + ' ')
            elsif (index < (words.length - 1))
                new_title << (value.capitalize + ' ')
            else
                new_title << value.capitalize
            end
            index += 1
        end
        @title = new_title
    end
end

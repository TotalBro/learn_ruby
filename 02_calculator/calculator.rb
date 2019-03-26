def add num1, num2
    return num1 + num2
end

def subtract num1, num2
    return num1 - num2
end

def sum nums
    value = 0
    nums.each do |num|
        value += num
    end
    return value
end
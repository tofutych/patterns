# puts "Сумма цифр числа = #{ARGV[0].to_i.digits.sum}"
def sum_of_digits(num)
    num.digits.sum
end

def max_digit(num)
    num.digits.max
end

def min_digit(num)
    num.digits.min
end

def product(num)
    num.digits.reduce(:*)
end

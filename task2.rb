def sum_of_digits(num)
    num.digits.sum
end

def max_digit(num)
    num.digits.max
end

def min_digit(num)
    num.digits.min
end

def multiplication(num)
    num.digits.reduce(:*)
end

def get_number_divisors(num)
    (1..num).map {|i| i if num % i == 0}.compact
end

def is_prime?(num)
    get_number_divisors(num).sum == 1 + num
end


# Метод 1 Найти сумму простых делителей числа.
def method_1(num)
    get_number_divisors(num).select {|elem| is_prime?(elem)}.sum
end

# Метод 2 Найти количество нечетных цифр числа, больших 3
def method_2(num)
    num.digits.select { |digit| digit > 3 && (not digit.even?) }.size
end

# Метод 3 Найти произведение таких делителей числа, сумма цифр
# которых меньше, чем сумма цифр исходного числа.
def method_3(num)
    get_number_divisors(num).select { |divisor| sum_of_digits(divisor) < sum_of_digits(num) }.reduce(:*)
end

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


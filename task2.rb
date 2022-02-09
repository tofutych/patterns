# В задании не было написано решить с помощью циклов, поэтому извините ( =
# но в задании со списками это было указано, поэтому, казалось бы, тут тоже надо было так, но я не хочу переписывать
def max_digit(num)
    num.digits.max
end

def min_digit(num)
    num.digits.min
end

def sum_of_digits(num)
    num.digits.sum
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

def main()
    if ARGV.empty?
        puts "Hello world"
    else
        case ARGV[0]
        when "1"
            puts "Вы выбрали «‎Максимальная цифра числа»‎"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{max_digit(num)}"
        when "2"
            puts "Вы выбрали ‎«‎Минимальная цифра числа»‎"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{min_digit(num)}"
        when "3"
            puts "Вы выбрали «‎Сумма цифр числа»‎"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{sum_of_digits(num)}"
        when "4"
            puts "Вы выбрали «Произведение цифр числа»‎"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{multiplication(num)}"
        when "5"
            puts "Вы выбрали «Метод 1»‎"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{method_1(num)}"
        when "6"
            puts "Вы выбрали «Метод 2»"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{method_2(num)}"
        when "7"
            puts "Вы выбрали «Метод 3»‎"
            print "Введите число: "
            num = STDIN.gets.chomp.to_i
            puts "Результат: #{method_3(num)}"
        else
            puts "Wrong arg"
        end
    end
end

main()
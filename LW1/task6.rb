# https://support.google.com/analytics/answer/1034330?hl=ru#:~:text=%D0%97%D0%B2%D0%B5%D0%B7%D0%B4%D0%BE%D1%87%D0%BA%D0%B0%20(*)%20%D0%B2%20%D1%80%D0%B5%D0%B3%D1%83%D0%BB%D1%8F%D1%80%D0%BD%D1%8B%D1%85%20%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%D1%85,10
# Дана строка. Необходимо найти максимальное из имеющихся в ней вещественных чисел.
def method1(str)
    return str.scan(%r"[+-]?[0-9]+[.][0-9]+").map {|elem| elem.to_f}.max
end

# Дана строка. Необходимо найти минимальное из имеющихся в ней рациональных чисел.
def method1(str)
    return str.scan(%r"[+-]?[0-9]+[.][0-9]+").map {|elem| elem.to_f}.min
end


# Дана строка. Необходимо найти наибольшее количество идущих подряд цифр.
def method3(str)
    return str.scan(%r"[0-9]*").uniq.map {|elem| elem.length}.max
end

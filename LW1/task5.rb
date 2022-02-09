# 1 Дана строка. Необходимо найти общее количество русских символов.
def task1(str)
    str.count("абвгдеёжзийклмнопрстуфхцчшщъыьэюя")
end

# 9 Дана строка. Необходимо проверить образуют ли строчные символы латиницы палиндром.
def task9(str)
    latin_lower = str.split("").select {|char| char.ord > 96 && char.ord < 123 }.join
    latin_lower == latin_lower.reverse
end

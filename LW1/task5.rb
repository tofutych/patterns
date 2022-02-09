# 1 Дана строка. Необходимо найти общее количество русских символов.
def task1(str)
    str.count("абвгдеёжзийклмнопрстуфхцчшщъыьэюя")
end

# 9 Дана строка. Необходимо проверить образуют ли строчные символы латиницы палиндром.
def task9(str)
    latin_lower = str.split("").select {|char| char.ord > 96 && char.ord < 123 }.join
    latin_lower == latin_lower.reverse
end

# 18 Найти в тексте даты формата «день.месяц.год».
def task18(str)
    contenders = str.scan(%r"[0-9]*[.][0-9]*[.][0-9]*").map {|contender| contender.split(".")}
    result = []
    for contender in contenders
        if contender[0].to_i > 0 && contender[0].to_i < 32
            if contender[1].to_i > 0 && contender[1].to_i < 13
                if contender[2].to_i > 0
                    unless contender[2].start_with?("0")
                        result.append(contender)
                    end
                end
            end
        end
    end

    result
end

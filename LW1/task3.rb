def min_elem(arr)
    min = arr[0]

    for elem in arr
        if elem < min
            min = elem
        end
    end

    min
end

def max_elem(arr)
    max = arr[0]

    for elem in arr
        if elem > max
            max = elem
        end
    end

    max
end

def sum_of_arr(arr)
    sum = 0 

    for elem in arr
        sum += elem
    end

    sum
end

def product_of_arr(arr)
    acc = 1

    for elem in arr
        acc *= elem
    end

    acc
end

def from_file(path)
    return File.read(path).split().map(&:to_i)
end

def from_kb()
    return STDIN.gets.chomp.split().map(&:to_i)
end



def main()
    if ARGV.empty?
        puts "Hello world"
        return
    end

    if ARGV[1] == "kb"
        arr = from_kb()
    elsif ARGV[1] == "file"
        arr = from_file(ARGV[2])
    else
        puts "wrong args"
    end

    case ARGV[0]
    when "1"
        puts "Вы выбрали «Нахождение минимального элемента»"
        puts "Результат: #{min_elem(arr)}"
    when "2"
        puts "Вы выбрали «Нахождение максимального элемента»"
        puts "Результат: #{max_elem(arr)}"
    when "3"
        puts "Вы выбрали «Нахождение суммы элементов»"
        puts "Результат: #{sum_of_arr(arr)}"
    when "4"
        puts "Вы выбрали ««Нахождение произведения элементов»"
        puts "Результат: #{product_of_arr(arr)}"
    end
end

main()
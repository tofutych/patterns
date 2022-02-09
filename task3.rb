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

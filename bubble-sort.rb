def bubble_sort(array)
    swapped = true
    until (swapped == false)
        swapped = false
        index = 0
        while (index < array.length-1)
            if (array[index] > array[index+1])
                array[index], array[index+1] = array[index+1], array[index]
                swapped = true
            end
        index += 1
        end
    end
    array
end

p bubble_sort [24, 7, 43, 12, 38, 2, 49, 15, 33, 27, 5, 41, 19, 46, 30, 8, 35, 11, 48, 23, 1, 37, 14, 50, 26, 4, 32, 21, 44, 9, 36, 18, 45, 10, 29, 3, 25, 40, 13, 31, 22, 6, 39, 16, 47, 28, 17, 34, 20, 42] 
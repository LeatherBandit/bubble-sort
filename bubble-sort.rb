def bubble_sort(unsorted_array)

    k = 0
    #This ensures we loop through the array n number of element times
    unsorted_array.each_with_index do |a_element, a_index|

        i = 0
        is_modified = false

        #Loop to the end of the array as long as i is less than the length - the iterations (Since we know that the last element will always be the largest "- k")
        while i < unsorted_array.length - 1 - k
            if unsorted_array[i] > unsorted_array[i + 1]
                larger = unsorted_array[i]
                smaller = unsorted_array[i + 1]
                unsorted_array[i + 1] = larger
                unsorted_array[i] = smaller
                i += 1
                is_modified = true
            else
                i += 1
            end
        end

        if is_modified == false
            return unsorted_array
        end
        k += 1
    end

    return unsorted_array
    
end

u_array = [19,9,8,7,6,5,4,3,2]

print bubble_sort(u_array)

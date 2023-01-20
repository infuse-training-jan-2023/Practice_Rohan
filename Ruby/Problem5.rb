arr = [9, 5, 1, 2, 3, 4, 0, -1]

class Problem_5

    def element_at(arr,index)
        if(index < 0)
            return "invalid index"
        elsif (index > arr.length)
            return "invalid index"
        else
            return arr[index]
        end
    end

    def inclusive_range(arr,start_pos, end_pos)
        if ((start_pos < 0) || (end_pos < 0))
            return "invalid index"
        elsif (start_pos > arr.length || end_pos >= arr.length)
            return "invalid index"
        else
            return arr[start_pos..end_pos]
        end
    end

    def non_inclusive_range(arr,start_pos, end_pos)
        if ((start_pos < 0) || (end_pos < 0))
            return "invalid index"
        elsif (start_pos > arr.length || end_pos >= arr.length)
            return "invalid index"
        else
            return arr[start_pos...end_pos]
        end
    end

    def start_and_length(arr,start_pos, length)
        if (start_pos < 0 || length <= 0) 
            return "invalid input"
        elsif (start_pos > arr.length)
            return "array out of bound"
        elsif (start_pos+length > arr.length)
            return("array out of bound")
        else
            return arr[start_pos,length]
        end
    end
end

prob5 = Problem_5.new()

# puts prob5.element_at(arr,-1)
# puts prob5.inclusive_range(arr,2,3)
# puts prob5.non_inclusive_range(arr,0,3)
puts prob5.start_and_length(arr,1,3)

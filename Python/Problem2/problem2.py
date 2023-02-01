class Problem2:

    def __init__(self,arr) -> None:
        self.arr = arr

    def element_at(self,index)->int:
        try:
            if(index < 0 or index > len(self.arr)):
                return "Array index out of range"
            return self.arr[index]
        except Exception:
            return "Not a valid element. Add a new element"

    def inclusive_range(self,start_pos, end_pos)->int:
        try:
            if ((start_pos < 0) or (end_pos < 0) or (start_pos > len(self.arr)) or (end_pos >= len(self.arr))):
                return "Array index out of range"
            return self.arr[start_pos:end_pos+1]
        except Exception:
            return "Not a valid element. Add a new element"

    def non_inclusive_range(self,start_pos, end_pos)->int:
        try:
            if ((start_pos < 0) or (end_pos < 0) or (start_pos > len(self.arr)) or (end_pos >= len(self.arr))):
                return "Array index out of range"
            return self.arr[start_pos:end_pos]
        except Exception:
                return "Not a valid element. Add a new element"

    def start_and_length(self,start_pos, length)->int:
        try:
            if ((start_pos < 0) or (length <= 0) or(start_pos > len(self.arr)) or (start_pos+length > len(self.arr))):
                return "Array index out of range"
            return  self.arr[start_pos:start_pos+length]
        except Exception:
            return "Not a valid element. Add a new element"

arr = [9, 5, 1, 2, 3, 4, 0, -1]
prob = Problem2(arr)
print(prob.element_at(6))
print(prob.inclusive_range(4,7))
print(prob.non_inclusive_range(1,6))
print(prob.start_and_length(5,3))

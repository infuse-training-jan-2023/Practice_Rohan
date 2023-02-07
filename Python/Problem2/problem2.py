class Problem2:

    def __init__(self,arr)->None:
        self.arr = arr
    
    def validation(self,start_pos=None,end_pos=None,index =None,length=None)->int:
        if(index is not None):
            return(index < 0 or index > len(self.arr))
        if(start_pos and end_pos is not None):
            return (start_pos < 0) or (end_pos < 0) or (start_pos > len(self.arr)) or (end_pos >= len(self.arr) or (end_pos < start_pos))
        if(start_pos and length is not None):
            return ((start_pos < 0) or (length <= 0) or(start_pos > len(self.arr)) or (start_pos+length > len(self.arr)))

    def element_at(self,index)->int:
        try:
            if self.validation(index=index):
                raise IndexError("Array index out of range")
            return self.arr[index]
        except Exception as e:
            return "Error:" + str(e)

    def inclusive_range(self,start_pos,end_pos)->int:
        try:
            if self.validation(start_pos=start_pos,end_pos=end_pos):
                raise IndexError("Array index out of range")
            return self.arr[start_pos:end_pos+1]
        except Exception as e:
            return "Error:" + str(e)

    def non_inclusive_range(self,start_pos,end_pos)->int:
        try:
            if self.validation(start_pos=start_pos,end_pos=end_pos):
                raise IndexError("Array index out of range")
            return self.arr[start_pos:end_pos]
        except Exception as e:
            return "Error:" + str(e)

    def start_and_length(self,start_pos,length)->int:
        try:
            if self.validation(start_pos=start_pos,length=length):
                raise IndexError("Array index out of range")
            return self.arr[start_pos:start_pos+length]
        except Exception as e:
            return "Error:" + str(e)

arr = [9, 5, 1, 2, 3, 4, 0, -1]
prob = Problem2(arr)
# print(prob.element_at(-1))
# print(prob.inclusive_range(6,3))
# print(prob.non_inclusive_range(3,4))
print(prob.start_and_length(5,10))

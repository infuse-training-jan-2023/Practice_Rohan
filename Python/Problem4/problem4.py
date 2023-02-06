from input import data

class Problem4:
    def subarray(self,nums,k):
        dict = {}
        sum = 0
        count = 0
        try:
            for num in nums:
                sum += num
                if sum == k:
                    count += 1
                if sum - k in dict:
                    count += dict[sum-k]
                if sum in dict:
                    dict[sum] += 1
                else:
                    dict[sum] = 1
            return count
        except Exception as e:
            return "Error:" + str(e)
        
prob = Problem4()
print(prob.subarray(data, " "))

class Problem3:

    def skip_sports(self,data, skip) ->str:
        arr = []
        try:
            if ((skip < 0) or (skip > len(data))):
                return "Array Out of bound"
            for index, element in enumerate(data):
                    if index >= skip:
                        arr.append(f"{index}:{element}")
            return arr
        except Exception:
                return "Invalid Input"

prob = Problem3()
print(prob.skip_sports(["cricket", "TT", "Football", "Hockey"], 2))

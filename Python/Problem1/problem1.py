import re
class Problem1:
    def serial_number(self, string_data) -> str:
        match = re.search(
            r'[0-9]{3}-[0-9]{2}.[0-9]{2}-[0-9]{2}.[0-9]{2}', string_data)
        if (not match):
            return "Invalid format"
        average = ((float(string_data[4:9]))+(float(string_data[10:])))/2
        return (string_data[:3]+"-%05.2f" % average)

prob = Problem1()
String = '002-20.00-20.00'
print(prob.serial_number(String))

require 'json'
JsonData = {
    "name": "Nicole Smith",
    "age": 25,
    "salary": 25552.67
    }

class Problem_8
    def Json_data()
        File.write('./profile.json',JSON.dump(JsonData))

        file = File.read('./profile.json')
        data_hash = JSON.parse(file)

        data_hash['first_name'] = first_name = data_hash['name'].split()[0]
        data_hash['last_name'] = last_name = data_hash['name'].split()[1]
        data_hash.delete("name")

        filename="Rohan_#{Time.now.strftime("%Y-%m-%d %H-%M-%S")}.json"
        File.write(filename,JSON.dump(data_hash))
        return "New Json File Created!"
    end
end
prob8 = Problem_8.new()
puts prob8.Json_data()

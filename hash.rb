hash = {
    22 => 98,
    11 => 89,
    20.9 => 99
  }
  
  class Problem_6
  
    def add_hash(hashData,keyV,valueV)
        if hashData.has_key?(keyV)
            return "Key value already exist"
        else
            hashData[keyV] = valueV
        end
        return hashData

    end
  
    def retain_integer(hash)
        hash.each_key do |key|

            
            if(!key.is_a? Integer)
                hash.delete(key)

            end 
        end
    end
  
    def remove_even(hash)
        hash.each_key do |key|
            if(key.even?)
                hash.delete(key)
            end 
        end
        return hash
    end
  end
  
  prob6 = Problem_6.new()
  
  puts prob6.add_hash(hash,220,972)

  puts prob6.retain_integer(hash)


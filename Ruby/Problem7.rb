class Problem_7

  def skip_sports(data,skip)
      arr = []
      if(skip < 0)
        return "invalid index"
      elsif (skip > data.length)
        return "Array Out of bound"
      else
        data.each_with_index do |data, i|
            if i >= skip
              arr.push("#{i}:#{data}")
            end
          end
        end
      return arr
    end
end

prob7 = Problem_7.new()
puts prob7.skip_sports(["çricket","TT","Football","Hockey"],2)
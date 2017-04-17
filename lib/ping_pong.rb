require('pry')
class Fixnum
  define_method(:ping_pong) do
    pingpong_result = []
    self.times() do |time|
      pingpong_string = ""
      start_at_one = time.+(1)
      if start_at_one.%(3)==0
        pingpong_string += "Ping"
      end
      if start_at_one.%(5)==0
        pingpong_string += "Pong"
      end
      if pingpong_string.==("")
        pingpong_string = start_at_one
      end
      pingpong_result.push(pingpong_string)
      puts(pingpong_string)
    end
    pingpong_result
  end
end

class String
  define_method(:leet) do
    empty_phrase = []
    leet_letters = ["e", "o", "I", "s"]
    split_phrase = self.split("")
    split_phrase.each() do |letter|
      if leet_letters.include?(letter)
        new_letter = ""
        if letter.==("e")
          new_letter = "3"
        elsif letter.==("o")
          new_letter = "0"
        elsif letter.==("I")
          new_letter = "1"
        elsif letter.==("s")
          if empty_phrase.last().==(" ") || empty_phrase.==([])
            new_letter = letter
          else
            new_letter = "z"
          end
        end
      else
        new_letter = letter
      end
      puts(new_letter)
      empty_phrase.push(new_letter)
    end
    empty_phrase.join("")
  end
end

class Array
  define_method(:queen_attack?) do |coords|
    if (self[0].-(coords[0])).abs() == (self[1].-(coords[1])).abs()
      puts("diagonally")
      true
    elsif self[0].==(coords[0])
      puts("vertical")
      true
    elsif self[1].==(coords[1])
      puts("horizontal")
      true
    else
      false
    end
  end
end

# [2,3] options
# [7,8]
#
# 2-7 3-8
# 5   5

class String
  define_method(:clock_degrees) do
    split_hours_from_minutes = self.split(":")
    hours = split_hours_from_minutes[0].to_i()
    minutes = split_hours_from_minutes[1].to_i()
    hours_degree = (30.*(hours)) + (0.5.*(minutes))
    minutes_degree = minutes.*(6)
    angle = hours_degree.-(minutes_degree)
    if angle > 180
      angle = angle.-(360).abs()
    end
    angle
  end
end

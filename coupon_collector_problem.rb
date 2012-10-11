
def throw_die()
   rand(6) + 1
end

def throw_until_all_faces_come_up

   table = {1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0}
   count = 0

   # Keep throwing the die until all faces come up.
   while table.has_value? 0
      face_value = throw_die()
      table[face_value] += 1
      count += 1
   end

   return count
end


puts "We're trying to see how many times we'd have to"
puts "throw a die to see all it's faces atleast once."

data = Array.new

1000000.times do
   data << throw_until_all_faces_come_up()
end

average = data.inject { |total,i| total + i } / data.length
puts "On averate, it took #{average} throws to see each face of the die atleast once"


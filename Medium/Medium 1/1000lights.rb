=begin 

input = a parameter of an array with several elements

output = return the original array but with
the first element shifted to the end of the array

quals = orig array cannot be modified

ex =

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]  

so, I can't use anything that creates 
or modifies the original array object. But I can
re-assign the elements by index number, as that doesn't
modify the object.

=end

def multiples(count, upto_value)
  last = 0
  empty_arr = []

  until last >= upto_value 
    empty_arr << last += count
  end
  empty_arr
end

def lights(repetitions)
  total_lights_on = []
  removed_lights = []
  number_of_lights = repetitions

  1.upto(number_of_lights) do |counter|
    removed_lights = []
    current_array = multiples(counter, number_of_lights)

    current_array.each do |number|
      if number > number_of_lights
        current_array.delete(number)
      elsif total_lights_on.include?(number)
        removed_lights << total_lights_on.delete(number)
      else
        total_lights_on << number
      end
    end

    puts "The following lights are now on: #{total_lights_on}"
    puts "The following lights are now off: #{removed_lights}"
  end

  puts "The following lights are on: #{total_lights_on}"
end

lights(9)


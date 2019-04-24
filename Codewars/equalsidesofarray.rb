=begin 

input = an array

output = an integer

rules = find the index N where the
        element(s) to left of N equal
        the element(s) to right of N

        If there is no index where that happen,
        return -1

        0 is a valid answer

        do not include the index in the
          calculation

examples:

{1,2,3,4,3,2,1}
=> 3
{1,100,50,-51,1,1}
=> 1

data =
- local variable named idx_counter for counting loops
- input array will remain in same array

algorithm =
- initialize local var `idx_counter as 0
- until idx_count is same value as array size,
  - first check if 0 == array[idx_counter + 1..-1]
    if true, return 0
    if false, continue
  - check if array[idx_counter] == array[idx_counter + 2..-1]
    - if true, return idx_counter + 1
    - if false, increment idx_counter by 1

=end

def find_even_index(arr)
  idx_counter = 0
  right_idx_counter = 2

  until idx_counter == arr.size - 1
    return 0 if 0 == calc_total(arr[(1)..-1])


    if calc_total(arr[0..idx_counter]) == calc_total(arr[right_idx_counter..-1])
      return idx_counter + 1
    else
      right_idx_counter += 1
      idx_counter += 1
    end

  end

  return (arr.size - 1) if calc_total(arr[0..(arr.size - 2)]) == 0

  -1
end

def calc_total(array)
  array.reduce(:+)
end

p find_even_index([1,2,3,4,3,2,1])
p find_even_index([1,100,50,-51,1,1])
p find_even_index([1,2,3,4,5,6])
p find_even_index([10,-80,10,10,15,35,20])
p find_even_index([12, -20, 14, 15, -12, 10, -8, -19, 7, 10, -16, -18, 2, 10, 12, 10, -18, -8, -12, -20, -19, 15, 10, 17, 2, 10, -16, 7])

def test(str)
  str += 2
end

test_str = 4
p test(test_str)
p test_str

x = 'poo'

p x.object_id

x += '?'

p x.object_id

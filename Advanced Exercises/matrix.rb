=begin 

input = an array of subarrays

output = an array of subarrays

rules = there will be 3 subarrays within one arraay
        when the method is invoked, transpose the array passed as argument
        do NOT modify the original array, make a copy
        the row on top (subarray 0), when transposed, will
        become a row comprised of the left (0 index) numbers
        the row in the middle will become a row
        still in the middle comprised of the middle index numberss

algorithm =
- define method transpose that takes parameter arr
- initialize empty array
- for each subarray in input arr
- append subarray onto empty array
- initialize empty array named results
- append subarray of 0 index numbers from all 3 rows
- repeat for each index

=end

def transpose(arr)
  copy = arr.dup
  sub_array, results = [], []
  column, row = 0, 0

  until results.size == 3
    
    3.times do 
      sub_array << copy[row][column]
      row += 1
    end

    results << sub_array
    column += 1
    row, sub_array = 0, []
  end

  results
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose(matrix)
p matrix



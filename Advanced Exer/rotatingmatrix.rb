=begin 

input = an array with subarrays

output = an array with subarrays

rules = rotate the input array 90* clockwise
        to be safe don't modify the original array

explained = it appears that the length of the new subarray
            depends on the amount of subarrays prior to rotation

            ex: 3  4  1
                9  7  5
                => 
                9  3
                7  4
                5  1

            The number of subarrays was 2, so the new subarray length is 2
            The subarrays are re-ordered from bottom to top,
            thats why 9, 7, and 5 are the first elements in the new subarrays
            so the row will start at the size of the input array (2, in this example)
            and will be used as (size - 1). Subtract 1 from row on each loop.

            in between iterations, increase the column counter by 1 to move
            the focus to the element one to the right, reset row counter to size of initial
            array - 1.

algorithm =
- initialize new array with dup
- initialize counters for row and column, set to size.array - 1 and 0
- until loop, break condition if new arrary size == row length of original array
- for each row in original array, using times method invocation (size of original array)
- append element with index [row][column]
- decrease row by 1 after
- after each iteration, append subarray to results
- reset subarray
- increment column by 1
- reset row to arr size

=end

def rotate90(arr)
  copy = arr.dup
  sub_array, results = [], []
  row, column = (arr.size - 1), 0
  initial_arr_length = (arr[0].length)

  until results.size == initial_arr_length

    arr.size.times do 
      sub_array << copy[row][column]
      row -= 1
    end

    results << sub_array
    sub_array = []
    column += 1
    row = (arr.size - 1)
  end

  results
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2


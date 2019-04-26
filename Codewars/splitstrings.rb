=begin 

input = string

output = array of strings

rules = append each two characters of string to 
        an array, if str.length <= 1, add an underscore
        to the end of the pair

algorithm =
- results array empty array
- until string == ''
  - results append slice of 0..1 (mutating)
  (this should update the index each time back to 0)
  - if there is less than or equal to 1 character
    left, add the last character and '_' and just 
    delete the final character from string

=end

def solution(str)
  results = []
  str += '_' if str.length.odd?
  
  str_arr = str.split('')

  until str_arr.empty?
    if str.length >= 2
      results << str_arr[0] + str_arr[1]
      2.times { str_arr.delete_at(0) }
    else
      results << str_arr[0] 
      str_arr.delete_at(0)
    end
  end

  results
end

p solution('abc') == ["ab", "c_"]
p solution('abcd') == ["ab", "cd"]
p solution('goingtogo') == ["go", "in", "gt", "og", "o_"]
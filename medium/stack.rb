=begin 

input = string

output = string or integer

rules = depending on the words/numbers
        in the input string, perform the operations
        specified in the specified order.
        input is always valid.
        all numbers are integers
        register initialized as 0

ex = 

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

algorithm=
- define method minilang with param str
- initialize local var `register` and assign to 0
- split str into array of elements separated by whitespace
- for each element in array_str,
  - if element is number, add to register_arr
  - if element is word, perform the operation by invoking method with same name as word
    - the method for each word will normally involve the last element of each array


=end

def minilang(str)
  register = []
  stack = []
  arr_str = str.split(' ')

  arr_str.each do |element|
    if /\d/.match(element)
      register << element.to_i
    elsif element == 'PRINT'
      printer(register)
    elsif element == 'POP'
      pop_it(register, stack)
    elsif element == 'PUSH'
      push_it(register, stack)
    elsif element == 'DIV'
      div(register, stack)
    elsif element == 'MULT'
      mult(register, stack)
    elsif element == 'ADD'
      add(register, stack)
    elsif element == 'SUB'
      subtract(register, stack)
    elsif element == 'MOD'
      mod(register, stack)
    end
  end
end

def printer(arr1)
  arr1.size >= 1 ? (puts arr1[-1]) : (puts 0)
end

def pop_it(arr1, arr2)
  arr1 << arr2.pop
end

def push_it(arr1, arr2)
  arr2.push(arr1.last)
end

def add(arr1, arr2)
  arr1[-1] += arr2.pop
end

def subtract(arr1, arr2)
  arr1[-1] -= arr2.pop
end

def mult(arr1, arr2)
  arr1[-1] *= arr2.pop
end

def div(arr1, arr2)
  arr1[-1] = arr1.last / arr2.pop
end

def mod(arr1, arr2)
  arr1[-1] = arr1.last % arr2.pop
end


minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('PRINT ')
minilang('6 PUSH')
minilang('-3 PUSH 5 SUB PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH 3 MULT PRINT')
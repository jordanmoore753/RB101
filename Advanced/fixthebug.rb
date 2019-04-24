

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The elsif conditional on line 6 had no expression to evaluate.
# So, the elsif conditional takes the map method invocation on 
# receiver array as the test expression.
# This elsif conditional evaluates to nil, and so the
# return value of any non-empty array was nil.
# The flow stopped at elsif.
# Including the expression array.size > 1 on the elsif
# conditional ensures that arrays with more than 1 element
# get the map method invocation, and the arrays with only
# 1 element get multiplied by 7.
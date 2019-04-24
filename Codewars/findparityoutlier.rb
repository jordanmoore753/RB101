=begin 

input = array of integers

output = integer

rules = return the odd or even integer
        out of an array with all odds or evens
        except one of the opposite

algorithm =
- if arr.cou

=end

def find_outlier(integers)
  integers.count(&:odd?) > 1 ? integers.select { |num| num.even? }.join.to_i : integers.select { |num| num.odd? }.join.to_i
end

p find_outlier([0, 1, 2])
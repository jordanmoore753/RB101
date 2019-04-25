=begin 



=end

def fibonacci(int)
  results = [1, 1]
  counter = 0

  int.times do 
    results << results[counter] + results[counter + 1]
    counter += 1
  end

  results
end

def select_numbers(arr)
  fibs = fibonacci(arr.size)
  arr.select.with_index { |num, idx| fibs.include?(idx) }
end


p fibonacci(9)
p select_numbers([1, 2, 3, 4, 5])
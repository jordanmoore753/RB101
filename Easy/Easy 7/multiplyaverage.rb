def show_multiplicative_average(arr)
  new_product = arr.reduce(:*)
  new_product = new_product.to_f
  new_product /= arr.size
  puts format("%.3f", new_product)
end

show_multiplicative_average([3,5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
show_multiplicative_average([6])
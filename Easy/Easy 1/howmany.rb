def count_occurences(x)
  hsh = {}
  x.each { |ele| hsh[ele] = 0 unless hsh[ele] }
  x.each { |ele| hsh[ele] += 1 }

  hsh
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurences(vehicles)
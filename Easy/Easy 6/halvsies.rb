
def halvsies(arr)
  return [arr, []] if arr.size == 1 || arr.empty?

  mid = arr.size / 2
  results = []

  if arr.size.odd?
    results += [arr[0..mid], arr[mid + 1..-1]]
  else
    results += [arr[0...mid], arr[mid..-1]]
  end

  results

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
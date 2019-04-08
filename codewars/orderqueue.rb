=begin 

input = an array, an integer

output = an integer

rules = the integer (input two) represents how many registers are available
        the array has elements that represent the minutes required to checkout
        return the total # of minutes required to get through all customers
        only n amount of customers may checkout at once because of input two

ex =

algorithm =
- pop the amount of elements from array according to integer argument
- loop until array size is empty
- create array that stores amount of time for each cash register
- once the element is equal to the corresponding integer, it resets to zero and next element
in argument array is shifted into that index position

=end

def queue_time(customers, n)
  arr = Array.new(n, 0)
  p arr[arr.index(arr.min)]
  customers.each { |customer| arr[arr.index(arr.min)] += customer }
  p arr[arr.index(arr.max)]
  p customers
  arr.max
end

p queue_time([2,3,10], 2)
p queue_time([5,3,4], 1)
p queue_time([10,2,3,3], 2)
p queue_time([1,2,3,4,5], 100)
p queue_time([23, 893, 98, 7, 7, 10, 47, 95], 3)
p queue_time([4, 631, 232, 15, 52, 2, 9, 578, 8], 3)
p queue_time([2, 74, 10, 44, 860, 291, 8, 9, 10, 12, 2, 80, 973, 4, 8, 8, 4, 29, 489, 83, 687, 2, 6, 667, 80, 42, 71, 89, 28, 3, 227, 74, 342, 838, 258, 688, 6, 911, 1, 5, 264, 600, 4, 576, 6, 6, 98, 153, 26, 7, 92, 93, 689, 614, 820, 4, 965, 703, 20, 35, 1, 10, 834, 1, 6], 63)
x = [1, 2, 3, 4]

p [2, 74, 10, 44, 860, 291, 8, 9, 10, 12, 2, 80, 973, 4, 8, 8, 4, 29, 489, 83, 687, 2, 6, 667, 80, 42, 71, 89, 28, 3, 227, 74, 342, 838, 258, 688, 6, 911, 1, 5, 264, 600, 4, 576, 6, 6, 98, 153, 26, 7, 92, 93, 689, 614, 820, 4, 965, 703, 20, 35, 1, 10, 834, 1, 6].size
x.delete(2)
p [8, 3, 8, 79, 9, 10, 439, 62, 55, 760, 782, 9, 630, 6, 4, 111, 62, 939, 750, 59, 22, 5, 3, 51, 450, 154, 39, 4, 30, 759, 35, 79, 766, 7, 869, 34, 406, 962, 2, 4, 81, 998, 55, 753, 19, 4, 61, 276, 16, 24, 9, 292, 1, 72, 421, 352, 708, 108, 8, 79, 754, 52, 828, 1, 8, 81, 8, 841, 2, 7, 643, 9, 8, 9, 5].size
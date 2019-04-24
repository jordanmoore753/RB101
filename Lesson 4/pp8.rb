=begin
	
The index constantly changes throughout
iteration based on the current array, not
the original array. I think this is why
LS always advises not to be destructive
inside of a method with the original array,
as it can mess with one's understanding of
the index iteration. 

In the first example, puts 1 to the console and
shift takes off the first element, 1. The next
iteration has 3 as the index 1, since 2 would be index 0.
The counter for the iteration doesn't coincide
with the shifting of the array.

In the second example, we put 1 to the console and
then pop 4 from the array. Next, 2 is the element index 1,
so it prints that, and pops 3 from the array. Iteration
done.

=end

numbers = [1,2,3,4]
numbers.each_with_index do |num, idx|
	p "#{idx} #{numbers.inspect} #{num}"
	numbers.shift(1)
end


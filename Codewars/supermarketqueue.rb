=begin 

input = array and integer

output = integer

rules = there is a certain amount (integer)
        of registers at a supermarket
        there is a queue of people with different
        amounts of time for their checkout (array element)
        compute how much total time it will
        take to check out all customers given
        the amount of registers and time each
        customer takes

algorithm =
-initialize registers array, for each element in
input array, add one 0
- add counter set to 0
- until input array size equal to registers array size
  - increment all elements of registers by 1
  - if the element equals the customer it represents,
    - set to element of register to 0 and
    - pop the element of the input array
    - set the popped element equal to the customer just checked out in input array
- out of loop
  - until input array is empty,
    incremennt all elements of registers by 1
    - if the element equals the customer it represents,
      - pop the element of input array


=end

def queue_time(arr, int)
  return 0 if arr.empty?
  return arr.min if arr.size == 1

  register, counter = [], 1
  current_customers, count = [], 0

  int.times { register << 0 }

  check_element, randum = 0, 0

  int.times do 
    current_customers << arr[count]
    arr.delete_at(count)
  end

  until arr.size == register.size
    register.map! { |num| num += 1 }
   

    int.times do 
      if register[check_element] == current_customers[check_element] 
        register[check_element] = 0

        current_customers[check_element] = arr.delete_at(count)
        
      end

      check_element += 1
    end

    check_element = 0

    counter += 1

  end


  until current_customers.size == 0
    register.map! { |num| num += 1 }
    
    int.times do 
      if register[check_element] == current_customers[check_element] 
      
        register[check_element] = 0
        current_customers.delete_at(check_element)
        
      end

      check_element += 1
    end

    check_element = 0

    counter += 1
    
  end

  counter
end

p queue_time([], 1)
p queue_time([5], 1)
p queue_time([2,2,3,3,4,4], 2)
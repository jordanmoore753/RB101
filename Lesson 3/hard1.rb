# 1

=begin 

Well, since something must be false in order for the expression
to be expressed, I don't expect anything to happen when greeting is
referenced.

Since "greeting" is an uninitialized variable, it's going to read as "nil". If
it was a initialized string with any value other than false, it would read as
truthy, which also wouldn't satisfy the conditional's requirements. 

It will raise an error for undefined method or local variable since greeting
is unitialized and nil.

=end

# 2

=begin 

The output is {:a => 'hi there'}.

This can be explained by the fact that informal_greeting and greetings
reference the same object. When one of them is mutated, so is the other, since
we're mutating the caller. In this example, the (<<) is appending the string 'there'
onto the exiting symbol (a:) which mutates the caller and modifies
the hash contents of both variables.

=end

# 3

=begin 

A: The outputs are: "one is: one; two is: two, three is: three"

Explained: The parameters referenced in the method are creating new variables 
that point at the same object as the input variables. However, when we reassign
their values inside of the method, we are effectively removing the reference to 
the outer scope and creating new variables that point at different objects. So,
we expect not to modify any of the existing variables in the outer scope.

B: The outputs are: "one is: one; two is: two, three is: three"

Explained: We're encountering the same problem as we did in A. We're effectively
creating new local variables with different values that point at different objects
as compared to the input variables in the parameter parantheses. The outer scope
variables remain the same.

C: The outputs are: "one is: two; two is: three; three is: one"

Explained: The #gsub! method is destructive, ie it mutates the caller, meaning that
it will change the original variable's object. Here, the first parameter after gsub! is
identifying which string value to replace, and the second parameter value
indicates what to replace it with. We then mutate the caller (one, two, three)
by calling them in the parantheses of the method.

=end

# 4

def is_an_ip_number?(word)
  word.split('.')
    word.to_i.between?(0,255) # I wrote out all the methods so I could really understand this problem
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4 # this is true so it doesn't return false, it will stop if there are more or less than 4 values
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word) #this ends the program if false
  end
  return true # this is where the program ends if everything goes correctly
end

values = '12.34.54.263'
p dot_separated_ip_address?(values)  # tests out well
values2 = '13.22.34.123'
p dot_separated_ip_address?(values2) # tests out well


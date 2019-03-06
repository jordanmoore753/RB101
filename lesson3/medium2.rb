# 1

=begin
  
We've got 4 object_ids. At first, a_outer and d_outer will equal each other, since
their object_id is of the same number (42). b_outer and c_outer will be long
sequences of numbers that will be different from one another.

Inside the times iteration now. (a_outer_inner_id..d_outer_inner_id) will all
have the same original object_ids they had in the first block. All we're doing
is reassigning a new variable to point to the same object as the original variables.

However, once we re-assign the variables (a_outer..d_outer) to entirely new values,
their object_ids will change accordingly when we #puts the result of their
reassignment. All values will be different. a_outer and d_outer will still be 
2-digit numeric values and b and c will be long sequences of numbers that are different
from one another.

Now, we're at the point where we're declaring the (a_inner..d_inner) variables as
= to their respective (a_outer..c_inner[0]) equivalents. Here again, when we #puts
their values, the object_ids will ALL be identical to the previous lines
of #puts for (a_outer..d_outer). This is because we are simply creating new 
variables to point at the same objects that other variables are pointing to.

Out of the times iteration. The #puts statements for (a_outer..d_outer) will
reflect the (a_outer.object_id..d_outer.object_id) that was reassigned inside of the
times iteration. a_outer will be 22, b_outer will be 'thirty three', c_outer = [44]
and d_outer is 44. This is because the local variables were declared BEFORE
the times iteration and thus can be modified to point at new objects.

However! The inner.object_ids, all four of them, in fact, are going to
throw up the rescue statement, "ugh ohhhhh". This is because (a_inner..d_inner) were declared
INSIDE of the times iteration, so the outer scope inside the method cannot access
them, nor does it know that these new variables even exist. Since these
variables are nonexistent, we get the #puts statement "ugh ohhhh" 4 times.

=end

# 2

=begin
  
At the beginning, we'll have the same types of object_ids as identified at
the beginning of the previous problem. 2-digit numeric values for a..d, and long 
sequences of numbers for b and c.

Once the method "an_illustrative_method" comes in, we are pushing all of the
variables we declared in the fun_with_ids method into it also, so conceivably we could
use them in some way.

The object_ids will be the same for before and after the method in the first 
batch of four #puts statements on lines 44-47. They will be the same as lines
2 - 5. This is because we haven't mutated or reassigned anything.

Now, inside this illustrative method, we are reassigning the values of the
variables we brought in; however, I don't think this is going to be mirrored in the 
fun_with_ids method. The four #puts statements on lines 56-59 will show changes to
their object_ids, as expected.

On lines 64-67 we declare new local variables to point to the same objects
that (a_outer..d_outer) point to. So, of course, they will have the same object
ids, and they do, as shown by the #puts statements on lines 74-77.

The illustrative method is over, and we're back in the fun_with_ids method.
On lines 22-25, the values will reflect the object_ids of the four variables declared
on lines 2-5. This is because the illustrative method actually will not affect
the original variables. 

As expected, the inner_values variables declared on lines 64-67 will throw up
the rescue clause, since the outer method doesn't know what these variables
are as they were not declared in that method. Outer scopes cannot access the 
local variables inside of an inner scope, and the same goes for methods. The
output will be "ugh ohhhh".

  
=end

# 3

=begin 

The outputs will be: "My string looks like this: pumpkin" and
                    "My array looks like this: 'pumpkin', 'rutabaga'""

The reason for the difference in their outputs is in how Ruby treats strings and
arrays differently. The parameters in the method aren't really passing
in exactly the variables specified; rather, it's passing in references to them.
So, the object that a_string_param points to and my_string point to are
different, even when my_string is passed in as the parameter.

So, when we reassign a_string_param += "rutabaga", we're really reassigning it to
a new local variable inside of the method that is inaccessible to the outer
scope. The array append (<<) mutates the caller, so it actually does affect
the original values by adding a new one onto it, but it doesn't mutate the object_id, since when the caller is
mutated on an array it only mutates the values, not the object itself that
the variable points to.

=end

# 4

=begin 

The outputs are: My string looks like this now: pumpkinsrutabaga
                My array looks like this now: ["pumpkins"]

Now, in the complete opposite of the previous problem, we see that
the (<<) operator mutates the caller by changing the variable "my_string".
We are modifying the original object, instead of just creating a new local variable.

Since the parameter "an_array_param" is simply being re-assigned to a new
array, the outer scope's array "my_array" will be unaffected, since the
parameter and the variable are referencing two separate objects. So, 
instead of modifying the original object (my_array) we are creating
a new local variable inside of the method, leaving the outer scope's my_array
unaffected.

=end

# 5

def color_valid(color)
  color == "blue" || color == "green"
end

# By eliminating the if statement, we've removed a lot of unnecessary
# code. We're still assessing whether the color is 'blue' or 'green'
# by keeping the (||) conditional in there. The method must still
# evaluate to either true or false based on the parameters string value.







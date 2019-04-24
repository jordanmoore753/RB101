#input: two integers, one a bill total amount, other a tip rate percentage
#output: two integers, new total bill and tip in dollars
#directions: 

def display_tip_bill(bill, tip)
    calc_tip = bill * (tip /= 100) 
    bill += calc_tip
    puts "The tip is $#{calc_tip.round(2)}."
    puts "The total is $#{bill.round(2)}"
end

puts 'What is the bill?'
user_bill = gets.chomp.to_f
puts 'What is the tip percentage?'
user_tip = gets.chomp.to_f

display_tip_bill(user_bill, user_tip)
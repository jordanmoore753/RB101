=begin 

input = 4 integers

output = an array with two integers

rules = man wants a new car, has an old one
        both depreciate every month at 1.5%
        every even month 2.0%
        starts with input money
        how many months until his cash
        and old car are enough to buy
        the new car and how much will he have left?

ex =

Test.assert_equals(nbMonths(2000, 8000, 1000, 1.5), [6, 766])
Test.assert_equals(nbMonths(12000, 8000, 1000, 1.5) ,[0, 4000])

=end

def nbMonths(old, new_car, save, rate)
  months = 0
  cash = 0
  until (cash + old) > new_car
    rate_calc = (rate / 100.0).to_f
    if months.zero? || months.odd?
      old = old - (old * rate_calc)
      new_car = new_car - (new_car * rate_calc)
    else
      rate += 0.5
      old = old - (old * rate_calc)
      new_car = new_car - (new_car * rate_calc)
    end
    cash += save
    months += 1
  end
  p months
  p cash
  p old
  p (cash + old) - new_car
  p new_car

end

nbMonths(2000, 8000, 1000, 1.5)


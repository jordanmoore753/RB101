=begin 

1. Create an empty array named `substrings` that will contain the substrings.
2. Create a local variable named `counter` that will be used to create a range of characters within the given `string`.
3. Create a local variable named `vowel_count` that will be used for counting vowels in the elements of `substring`.
4. For every `character` in the input `string`:
* Check for `counter` being equal to the length of `string`. If true, append only `character` to `substrings` and exit the loop or iteration.
* Otherwise, append the result of `character` up to and including `counter` to `substrings`.
* Increment `1` to `counter`
5. For each `element` in `substring`:
* Count the amount of vowels `aeiou` and add the amount to `vowel_count`
6. Return `vowel_count`.

`Input: 'abce': 'a,' 'ab', 'abc', 'abce', 'b', 'bc', 'be', 'c', 'ce', 'e'`
`Output: 8`

=end

def vowel_recognition(str)
  substrings = []
  counter = 0

  str.each_char do |_|
    substrings << substrings(str[counter..-1])
    counter += 1
  end

  substrings.join('').scan(/[aeiouAEIOU]/).count
end

def substrings(str)
  counter = 0
  substrings = []

  0.upto(str.length - 1) { |counter| substrings << str[0..counter] }

  substrings
end

p vowel_recognition("aeiouAEIOU")


arrayy = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

def sorter(arr)
  arr.sort_by do |sub_arr|
    sub_arr.map do |num|
      num.to_i
    end
  end
end

p sorter(arrayy)

x = 'americathebeaut'

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers(arr)
  arr.map.with_index do |number, idx| 
    number *= 2 unless idx.even? 

    number
  end
end

p double_numbers(my_numbers)
p my_numbers

if puts 'poop'
  puts 'yeah truthy'
else
  puts 'no falsey'
end

hsh = { a: "ant", b: "bear", c: "cat" }

def poo(hsh)
hsh.each_with_object({}) do |(key, value), array|
  array[key] = value
end
end

p poo(hsh)

p [[:a, "ant"], [:b, "bear"]].to_h

odd, even = [1,2,3,4,5].partition do |x|
            x.odd?
end
p odd, even

if true
  puts "true is truthy, duh!"
else
  puts "true is falsey, wtf!"
end

if nil
  puts "nil is truthy"
else
  puts "nil is falsey"
end

if 0
  puts "0 is truthy"
else
  puts "0 is falsey"
end

xx = ['ant', 'bear', 'cat']


def pooooos(str)
  str.each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
end

p pooooos(xx)

def greetings(str)
  puts "Goodbye"
end

word = "Hello"

p greetings(word)

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
p arr[2, 3]
p arr[2, 3][0]

[1, 2, 3].map do |num|
  num.odd?
  puts num
end

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
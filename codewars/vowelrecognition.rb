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

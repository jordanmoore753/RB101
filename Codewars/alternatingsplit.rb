=begin

input = two arguments: a string, and an integer argument passed into the method

output = a new string with the characters mixed in a
new way

rules = take every 2nd char from the string, then the other chars
that are NOT every 2nd char, and CONCAT them as new string. Do
this N times.

Write two methods

If input is null or empty return exactly nil!

This means that take every odd index character and concat
with every even index character

ex =

"This is a test!", 1 -> "hsi  etTi sats!"
"This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"

I believe the encrypt method and decrypt method
will be mirror images of one another.

=end

def encrypt(text, n)
  if text.empty?
    return text
  end

  if n > 0
    n.times do
      odds, evens = '', ''
      text.split('').each_with_index do |char, idx|
        if idx.odd?
          odds << char
        else
          evens << char
        end
      end
      text = odds << evens
    end    
  end
  text
end

def decrypt(encrypted_text, n)
  if encrypted_text.empty?
    return encrypted_text
  end

  output = []
  
  if encrypted_text.length.even?
    odds = encrypted_text.slice(0..encrypted_text.length / 2 + 1).split('')
    evens = encrypted_text.slice((encrypted_text.length / 2 + 2)..-1).split('')
  else
    odds = encrypted_text.slice(0..encrypted_text.length / 2).split('')
    evens = encrypted_text.slice(encrypted_text.length / 2 + 1..-1).split('')
  end
  counter = 0

  while counter < encrypted_text.length
    if counter.even? || counter.zero?
      output << odds[counter]
      odds.delete_at(counter)
      counter += 1
    else
      output << evens[counter]
      evens.delete_at(counter)
      counter += 1
    end
  end

  p output

end
=begin
def decrypt(encrypted_text, n)
  if encrypted_text.empty?
    return encrypted_text
  end

  if encrypted_text.split(' ').size <= 4
    rotations = 4 - n
  else
    rotations = n - 2
  end

  if n > 0
    (rotations).times do
      odds, evens = '', ''
      encrypted_text.split('').each_with_index do |char, idx|
        if idx.odd?
          odds << char
        else
          evens << char
        end
      end
      encrypted_text = odds << evens
    end    
  end
  encrypted_text
end
=end
p decrypt('foure', 1)
p decrypt('This has five words in', 1)
p decrypt('febyeW1cfJoDT qPNlPT iiCOUh ZdZbIZRD Ej0JdU,Vi vI,U FWYl5TWMx2;qOYwYkK2H JJE7DtOGVd8', 9) # == 'Uf,eVbiy evWI1,cUf JFoWDYTl 5qTPWNMlxP2T; qiOiYCwOYUkhK 2ZHd ZJbJIEZ7RDDt OEGjV0dJ8d'

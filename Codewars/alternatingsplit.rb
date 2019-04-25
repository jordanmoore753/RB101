=begin 

input = string, integer

output = string

rules = take every 2nd char from the string (odds)
        then every even char from the string
        concat together as new string
        do this n times (integer input)

        second method
        decrypt the text, given the encrypted
        string and an integer
        do the operation n times (integer input)

algorithm =
- encrypt method
- initialize encrypt_str as ''
- n times do the following
  - encrypt_str += invoking select on str split for odd chars
  - encrypt_str += invoking select str split for even chars and zero
-


=end

def encrypt(str, int)
  encrypt_str = str
  current_str = str

  int.times do
    current_str = ''
    current_str += encrypt_str.split('').select.with_index { |char, idx| idx.odd? }.join('')
    current_str += encrypt_str.split('').select.with_index { |char, idx| idx.even? || idx.zero? }.join('')
    encrypt_str = current_str
  end

  current_str
end

def decrypt(str, int)
  return str if int <= 0
  encrypt_str = str
  current_str = str

  int.times do
    current_str, counter = '', 0
    midpoint = encrypt_str.length / 2
    current_str += encrypt_str[midpoint]
    
    left, right = encrypt_str.split('').slice(midpoint..-1), encrypt_str.split('').slice(0...midpoint)

    current_str = left.zip(right).flatten.join('')
    encrypt_str = current_str
  end
  
  current_str
end

# p decrypt("This is a test!", 0)
p decrypt("hsi  etTi sats!", 1)
p decrypt("s eT ashi tist!", 2)
p decrypt(" Tah itse sits!", 3)
p decrypt("This is a test!", 4)
p decrypt("This is a test!", -1)
p decrypt("hskt svr neetn!Ti aai eyitrsig", 1)

# p encrypt("This is a test!", 0)
# p encrypt("This is a test!", 1)
# p encrypt("This is a test!", 2)
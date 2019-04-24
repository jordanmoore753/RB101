=begin

input = a string of characters a,t,g,c all upcase

output = a string of characters that are the complements
of the original string argument

rules = A becomes T, vice versa, C becomes G, vice versa.

ex = DNA_strand ("ATTGC") # return "TAACG"

DNA_strand ("GTAT") # return "CATA"

=end

DNA_COMPLEMENTS = { 'T' => 'A', 'A' => 'T', 'C' => 'G', 'G' => 'C' }

def DNA_strand(str)
  str.tr('ATGC', 'TACG')
end

p DNA_strand ("ATTGC") 
p DNA_strand ("GTAT") 


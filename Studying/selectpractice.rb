p [1, 4, 7, 8, 2, 3, 5, 2].select { |num| puts num }

def random_method_abc(str)
  str << ('b')
end

words = 'lets go to school'
more_words = 'what?'

random_method_abc(words)

loop do 
  random_method_abc(more_words)
  break
end

p more_words
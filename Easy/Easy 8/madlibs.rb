def prompt(message)
    puts "=> #{message}"
end

def randomize(arr)
    selection = arr.sample()
    selection
end

def display_one(no, ve, adj, adv)
    puts "Do you #{ve} your #{adj} #{no} #{adv}?"
end

def display_two(no, ve, adj, adv)
    puts "Where can I #{ve} #{adv} with a #{adj} #{no}?"
end

def display_three(no, ve, adj, adv)
    puts "I cannot #{ve} your #{adj} #{no} #{adv}. I'm sorry."
end

loop do 
    random = [1, 2, 3]
    prompt('Enter a noun: ')
    noun = gets.chomp.to_s
    prompt('Enter a verb: ')
    verb = gets.chomp.to_s
    prompt('Enter an adjective: ')
    adjective = gets.chomp.to_s
    prompt('Enter an adverb: ')
    adverb = gets.chomp.to_s

    prompt('Creating Mad lib...')

    case randomize(random) 
    when 1 then display_one(noun, verb, adjective, adverb)
    when 2 then display_two(noun, verb, adjective, adverb)
    when 3 then display_three(noun, verb, adjective, adverb)
    end

    prompt("Would you like to play again? Y if yes: ")
    answer = gets.chomp.to_s.downcase
    break if answer != 'y'
end
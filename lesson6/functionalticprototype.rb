available_moves = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
array = ['1', '2', '3', '4', '5', '6', '7', '8', '9']	

def prompt(message)
	puts "=> #{message}"
end

def ending_prompt(message)
	puts "<***> #{message} <***>"
end

def display_board(arr)
	puts "#{arr[0]} #{arr[1]} #{arr[2]}"
	puts "#{arr[3]} #{arr[4]} #{arr[5]}"
	puts "#{arr[6]} #{arr[7]} #{arr[8]}"
end

def comp_check_row(move, avail_m, arr)
	case move 
	when '1'..'3' then comp_set_square_row_a(move, avail_m, arr)
	when '4'..'6' then comp_set_square_row_b(move, avail_m, arr)
	when '7'..'9' then comp_set_square_row_c(move, avail_m, arr)
	end
end

def user_check_row(move, avail_m, arr)
	case move 
	when '1'..'3' then user_set_square_row_a(move, avail_m, arr)
	when '4'..'6' then user_set_square_row_b(move, avail_m, arr)
	when '7'..'9' then user_set_square_row_c(move, avail_m, arr)
	end
end

def comp_set_square_row_a(move, avail_m, arr)
	case move 
		when '1' 
			avail_m.delete('1')
			arr[0] = 'O'
		when '2' 
			avail_m.delete('2')
			arr[1] = 'O'
		when '3' 
			avail_m.delete('3')
			arr[2] = 'O'
	end
end

def comp_set_square_row_b(move, avail_m, arr)
	case move 
		when '4'
			avail_m.delete('4')
			arr[3] = 'O'
		when '5' 
			avail_m.delete('5')
			arr[4] = 'O'
		when '6' 
			avail_m.delete('6')
			arr[5] = 'O'
	end
end

def comp_set_square_row_c(move, avail_m, arr)
	case move 
		when '7' 
			avail_m.delete('7')
			arr[6] = 'O'
		when '8' 
			avail_m.delete('8')
			arr[7] = 'O'
		when '9' 
			avail_m.delete('9')
			arr[8] = 'O'
	end
end

def user_set_square_row_a(move, avail_m, arr)
	case move 
		when '1' 
			avail_m.delete_at(0)
			arr[0] = 'X'
		when '2' 
			avail_m.delete('2')
			arr[1] = 'X'
		when '3' 
			avail_m.delete('3')
			arr[2] = 'X'
	end
end

def user_set_square_row_b(move, avail_m, arr)
	case move 
		when '4' 
			avail_m.delete('4')
			arr[3] = 'X'
		when '5' 
			avail_m.delete('5')
			arr[4] = 'X'
		when '6' 
			avail_m.delete('6')
			arr[5] = 'X'
	end
end

def user_set_square_row_c(move, avail_m, arr)
	case move 
		when '7' 
			avail_m.delete('7')
			arr[6] = 'X'
		when '8' 
			avail_m.delete('8')
			arr[7] = 'X'
		when '9' 
			avail_m.delete('9')
			arr[8] = 'X'
	end
end

def check_horizontal(arr)
	if arr[0] == arr[1] && arr[1] == arr[2]
		true
	elsif arr[3] == arr[4] && arr[4] == arr[5]
		true
	elsif arr[6] == arr[7] && arr[7] == arr[8]
		true
	else
		false
	end
end

def check_vertical(arr)
	if arr[0] == arr[3] && arr[3] == arr[6]
		true
	elsif arr[1] == arr[4] && arr[4] == arr[7]
		true
	elsif arr[2] == arr[5] && arr[5] == arr[8]
		true
	else
		false
	end
end

def check_diagonal(arr)
	if arr[0] == arr[4] && arr[4] == arr[8]
		true
	elsif arr[2] == arr[4] && arr[4] == arr[6]
		true
	else
		false
	end
end

def check_win?(arr)
	check_horizontal(arr) || check_vertical(arr) || check_diagonal(arr)
end

def check_tie?(avail_m)
	avail_m.empty?
end

loop do 

	who_won = 0

	loop do
		
		display_board(array)
		user_move = ''

		loop do 
			
			puts "Choose from: #{available_moves}."
			user_move = gets.chomp.to_s

			break if available_moves.include?(user_move)
			puts "Pick a valid option."
			
		end

		user_check_row(user_move, available_moves, array)
		
		if check_win?(array)
			who_won += 1
			break
		elsif check_tie?(available_moves)
			break
		end
		
		comp_move = available_moves.sample
		comp_check_row(comp_move, available_moves, array)
		display_board(array)
		
		if check_win?(array)
			who_won -= 1
			break
	end
		
		puts "Continue? y for Yes: "
		ans = gets.chomp.to_s
		ans.casecmp('Y').zero? ? system('clear') : break
		
		end

	if check_win?(array)
		case who_won
		when 1 
			system('clear')
			display_board(array)
			ending_prompt("Player wins.")
			prompt("Thank you for playing.")
		when -1 
			system('clear')
			display_board(array)
			ending_prompt("Computer wins.")
			prompt("Thank you for playing.")
		end	
		break
	elsif check_tie?(available_moves)
		system('clear')
		display_board(array)
		ending_prompt("Tie.")
		prompt("Thank you for playing.")
		break
	else
		prompt("Thank you for playing.")
		break
	end
		
end







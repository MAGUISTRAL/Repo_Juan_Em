def stairway
	puts "Welcome to the Stairway game ! Throw the dice and try to climb the stairs"
	puts "Press ENTER to play and throw the dice"
	position=0
	counter=0
	gets

	while position <10

		a=rand(1..6)
		puts "Dice=#{a}"


		if a==5 || a==6 
			puts "Congrats, you go to the next stair"
			position = position+1
			puts "You're now on the stair n°#{position}"
			half_pyramid(position)
			puts "Press ENTER again"
			counter=counter+1
			gets 
		end

		if a==1   
			puts "Sorry, you go down"
				if position >0 then position = position-1
				else position=position 
				end
			puts "You're now on the stair n°#{position}"
			half_pyramid(position)
			puts "Press ENTER again"
			counter=counter+1
			gets 
		end

		if a==2 || a==3 || a==4 
			puts "sorry, you stay here"
			position=position
			puts "you're still on the stair n°#{position}"
			half_pyramid(position)
			puts "Press ENTER again"
			counter=counter+1
			gets 
		end

	end

	puts "YOU WIN! You did #{counter} tours"
	
end


def half_pyramid(chiffre)
	for i in 1..chiffre
	(chiffre-i).times {print " "} 
	i.times {print "#"}
	print "\n"
	i=i+1
	end
end



stairway
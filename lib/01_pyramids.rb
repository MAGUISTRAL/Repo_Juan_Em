
def half_pyramid (chiffre)
    n = 1
        for a in n..chiffre 
        print " " * (chiffre- a)
        puts  "#" * n 
        n += 2
        end
    
end

puts "Choisis un chiffre"
chiffre=gets.chomp.to_i
while chiffre < 1 || chiffre>25
puts "Choisis un chiffre entre 1 et 25"
chiffre=gets.chomp.to_i
end
puts half_pyramid (chiffre)






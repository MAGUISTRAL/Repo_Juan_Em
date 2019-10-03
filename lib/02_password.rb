def signup 
    puts "Choisis un mot de passe"
    gets.chomp
end


def login (m)
    puts "Saisis ton mot de passe"
    test = gets.chomp
    while test != m
    puts "Réessaie"
    test= gets.chomp
    end

    puts "Bravo!"

end

def welcome_screen
    puts "Bienvenu dans ta zone secrete
    - tu auras faim bientot!
    "
end

def perform
    mdp=signup
    login(mdp)
    welcome_screen
end

perform

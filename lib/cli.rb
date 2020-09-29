class CLI

    def menu
        puts ""
        puts "WUBBA-LUBBA DUB-DUB!" 
        puts ""
        puts "WELCOME TO THE MULTIVERSE OF RICK AND MORTY!"
        puts "________________________________________________________________________________________________"
        puts ""
        puts ""
        puts "Type 'character' if you would like to see characters from the multiverse of Rick and Morty"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' if you would like to return to your own universe"

        @character = gets.strip.downcase

        API.get_characters(@name)

    end 

end 
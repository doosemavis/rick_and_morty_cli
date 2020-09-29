class CLI

    def menu
        puts ""
        puts "WUBBA-LUBBA DUB-DUB!" 
        puts ""
        puts "WELCOME TO THE MULTIIVERSE OF RICK AND MORTY!"
        puts "________________________________________________________________________________________________"
        puts ""
        puts ""
        puts "Enter the 'character' if you would like to see characters from the multiverse of Rick and Morty"
        puts ""

        @character = gets.strip.downcase

    end 

end 
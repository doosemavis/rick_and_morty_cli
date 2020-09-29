class CLI

    def menu
        puts ""
        puts "WUBBA-LUBBA DUB-DUB!" 
        puts ""
        puts "WELCOME TO THE MULTIVERSE OF RICK AND MORTY!"
        puts ""
        puts "________________________________________________________________________________________________"
        puts ""
        puts ""
        puts "Type 'character' if you would like to see characters from Rick and Morty"
        puts "Type 'location' if you want to see more multiverse locations"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' if you would like to return to your own universe"
        puts ""
        puts ""
        puts ""

        @character = gets.strip.downcase
        @location = gets.strip.downcase

        API.get_characters(@name)
        API.get_locations(@name) 

    end 
    

end 
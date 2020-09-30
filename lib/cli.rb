class CLI

    def menu_one
        puts ""
        puts "WUBBA-LUBBA DUB-DUB!" 
        puts ""
        puts "WELCOME TO THE MULTIVERSE OF RICK AND MORTY!"
        puts ""
        puts "________________________________________________________________________________________________"
        puts ""
        puts ""
        puts "Type 'characters' if you would like to see characters from Rick and Morty"
        puts "Type 'locations' if you want to see more multiverse locations"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' if you would like to return to your own universe"
        puts ""
        puts ""
        puts ""

        @character = gets.strip.downcase
        API.get_characters(@name)
      
        characters = Character.all
        characters.each.with_index(1) do |c, i|
            puts "#{i}. #{c.name}"
        end 
    end 

    def menu_two
        @location = gets.strip.downcase
        API.get_locations(@name) 

        locations = Location.all
        locations.each.with_index(1) do |l, i|
            puts "#{i}. #{l.name}"
        end 
    end 



end 
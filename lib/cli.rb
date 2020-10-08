class CLI

    def call

        API.get_characters
        
        puts ""
        puts "WUBBA-LUBBA DUB-DUB!" 
        puts ""
        puts "WELCOME TO THE MULTIVERSE OF RICK AND MORTY!"
        puts ""
        puts "________________________________________________________________________"
        puts ""
        puts ""
        puts "Type 'characters' if you would like to see characters from Rick and Morty"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' if you would like to return to your own lame universe"
        puts ""
        puts ""
        puts ""

        menu_one
    end


    def menu_one
        input = gets.strip.downcase
        while input != 'exit' do 
            if input == 'characters'
                print_characters 
            elsif input == 'go back'
                print_characters
            else 
                puts "What??? I don't undersatand, type 'go back' to go back"  
            end 
             input = gets.strip.downcase
        end 
        puts "See ya, sucka!!"
    end 


    def prompt
        puts ""
        puts "Type a character's name to see more info about them"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' to go back to your own lame universe"
        puts ""
        puts ""
    end 

    def prompt_two
        puts ""
        puts "Wanna see more info about another character?"
        puts ""
        puts "If you do, type 'go back' to go back to the list, if not, type 'exit'"
    end 


    def print_characters
        Character.all.each.with_index(1) do |c, i|
            puts "#{i}. #{c.name}"
        end 
        prompt
        input = gets.strip.downcase
        character_selection(input)
    end 


    def character_selection(character_name)
        character = Character.find_by_character(character_name)
        character.each do |c|
            puts ""
            puts " Name: #{c.name}"
            puts " Gender: #{c.gender}"
            puts " Species: #{c.species}"
            puts " Status: #{c.status}"
            puts ""     
        end
        prompt_two
    end 

end 
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
        if input == 'characters'
            print_characters
            menu_one
        elsif input == 'exit'
            puts "See ya, sucka!"
        else 
            puts "What? I can't undersatand you, try another response"
            menu_one
        end 
    end 


    def prompt
        puts ""
        puts "Type a number to see more info about a character"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' to exit to your own lame universe"
    end 


    def print_characters
        Character.all.each.with_index(1) do |c, i|
            puts "#{i}. #{c.name}"
        end 
        prompt
        input = gets.strip.downcase
    end 

end 
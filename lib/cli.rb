class CLI

    def menu_one
        puts ""
        puts "WUBBA-LUBBA DUB-DUB!" 
        puts ""
        puts "WELCOME TO THE MULTIVERSE OF RICK AND MORTY!"
        puts ""
        puts "________________________________________________________________________"
        puts ""
        puts ""
        puts "Type 'characters' if you would like to see characters from Rick and Morty"
        # puts "Type 'locations' if you want to see more multiverse locations"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' if you would like to return to your own lame universe"
        puts ""
        puts ""
        puts ""

        @character = gets.strip.downcase
        API.get_characters(@name)
        print_characters
        prompt
        input = gets.strip.downcase 
        while input != 'exit' do
            if input == 'characters'
                @character = gets.strip.downcase
                API.get_characters(@name) if Character.find_by_character(@name).length == 0
                print_characters
            elsif input.to_i > 0 && input.to_i <= Character.find_by_character(@name).count
                characters = Character.find_by_character(@name)[input.to_i-1]
                API.get_character(character) if !character.name
            else 
                puts "Incorrect answer: enter another option" 
                print_character(character)
            end 
            input = gets.strip.downcase
        end
    end 

    def prompt
        puts ""
        puts "Type a number to see more info about a character"
        puts ""
        puts "OR"
        puts ""
        puts "Type 'exit' to exit to your own lame universe"

        def print_characters
            Character.find_by_character(@name).each.with_index(1) do |c, i|
                puts "#{i}. #{c.name}"
            end 
        end 

        def print_character(character)

        end 


    # def menu_two
    #     @location = gets.strip.downcase
    #     API.get_locations(@name) 

    #     locations = Location.all
    #     locations.each.with_index(1) do |l, i|
    #         puts "#{i}. #{l.name}"
    #     end 
    # end 

end 
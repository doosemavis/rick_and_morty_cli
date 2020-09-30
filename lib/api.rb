require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)["results"].each do |c|
            Character.new(name: c["name"], species: c["species"], gender: c["gender"], status: c["status"]) if c["name"] != nil
        end 
        # binding.pry 
    end 

    def self.get_character(name)
        url="https://rickandmortyapi.com/api/character/"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        character_info = JSON.parse(response)
        character.name = character_info["name"]
        character.species = character_info["species"]
        character.gender = character_info["gender"]
        character.status = character_info["status"]
        character.keys.each do |c|
            character.names << character_info[c] if (c.include? "name") && character_info[c] != "" && character_info[c] != " " && character_info[c] != nil 
        end 
            # binding.pry
    end 

    # def self.get_locations(name)
    #     url="https://rickandmortyapi.com/api/location/"
    #     uri=URI(url)
    #     response=Net::HTTP.get(uri)

    #     locations=JSON.parse(response)["results"].each do |l|
    #         Location.new(name: l["name"], type: l["type"], dimension: l["dimension"]) if l["name"] != nil
    #     end 
    #     binding.pry 
    # end 


end 
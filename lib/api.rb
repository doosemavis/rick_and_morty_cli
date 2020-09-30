require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)["results"].each do |c|
            Character.new(name: c["name"], species: c["species"], gender: c["gender"]) if c["name"] != nil
        end 
        # binding.pry 
    end 

    def self.get_characters
        url="https://rickandmortyapi.com/api/character/"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        character_info = JSON.parse(response)["results"] 
        character.name = character_info["name"]
        character.species = character_info["species"]
        character.gender = character_info["gender"]
        character.status = character_info["status"]
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
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
        character_info = JSON.parse(response)["results"][0] 
        character.info = character_info["name"]
        character.info = character_info["species"]
        character.info = character_info["gender"]
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
require 'pry'

class API

    def self.get_characters
        url="https://rickandmortyapi.com/api/character/"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        character_info = JSON.parse(response)["results"]

        character_info.each do |c|
            character = Character.new(name: c["name"], species: c["species"], gender: c["gender"], status: c["status"]) if c["name"] != nil
        end 
    end 
end 
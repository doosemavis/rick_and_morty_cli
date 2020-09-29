require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)["results"].each do |c|
            Character.new(name: c["name"], species: c["species"], gender: c["gender"]) if c["name"] != nil
        end 
        binding.pry 
    end 

end 
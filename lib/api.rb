require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/?#{name}"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)["results"].each do |c|
            Character.new(name: c["name"], species: c["species"], location: c["location"], episode: c["episode"]) if c["name"] != nil
        end 
        binding.pry 
    end 

end 
require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/?#{name}"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)["results"][0]["name"].each do |c|
            Character.new(name: c["name"]) if c["name"] != nil
        end 
    end 

end 
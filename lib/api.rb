require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/?#{name}"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)["results"][0]["name"]
        binding.pry
    end 

end 
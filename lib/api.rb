require 'pry'

class API

    def self.get_characters(name)
        url="https://rickandmortyapi.com/api/character/?#{name}"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        characters=JSON.parse(response)
        binding.pry
    end 

end 
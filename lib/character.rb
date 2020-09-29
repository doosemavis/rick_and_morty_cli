class Character
    attr_accessor :name

    @@all = []

    def initialize(name: nil, species: nil, location: nil, gender: nil)
        @name = name
        @species = species
        @location = location
        @gender = gender
        @@all << self
    end 

    def self.all
        @@all  
    end 

    def self.find_by_character(name)
        self.all.select {|c| c.name == name}
    end 

end 
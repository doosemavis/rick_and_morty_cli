class Character
    attr_accessor :name

    @@all = []

    def initialize(name: nil, species: nil, location: nil, episode: nil)
        @name = name
        @species = species
        @location = location
        @episode = episode
        @@all << self
    end 

    def self.all
        @@all  
    end 

    def self.find_by_character(name)
        self.all.select {|c| c.name == name}
    end 

end 
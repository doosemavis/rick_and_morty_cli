class Character
    attr_accessor :name, :species, :gender

    @@all = []

    def initialize(name:, species:, gender:)
        @name = name
        @species = species
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
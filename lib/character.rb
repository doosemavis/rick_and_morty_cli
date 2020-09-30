class Character
    attr_accessor :name, :species, :gender, :status, :names

    @@all = []

    def initialize(name:, species:, gender:, status:)
        @name = name
        @species = species
        @gender = gender
        @status = status
        @names = []
        @@all << self
    end 

    def self.all
        @@all  
    end 

    def self.find_by_character(name)
        self.all.select {|c| c.name == name}
    end 

end 
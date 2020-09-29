class Character
    attr_accessor :name

    @@all = []

    def initialize(name: nil)
        @name = name
        @@all << self
    end 

    def self.all
        @@all  
    end 

    def self.find_by_character(name)
    end 
    
end 
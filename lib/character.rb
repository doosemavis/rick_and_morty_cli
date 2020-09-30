class Character
    attr_accessor :name, :species, :gender, :status

    @@all = []

    def initialize(name:, species:, gender:, status:)
        @name = name
        @species = species
        @gender = gender
        @status = status
        @@all << self
    end 

    def self.all
        @@all  
    end 

    # def self.find_by_index(index)
    #     self.all.select {|c| c.name == index}
    # end 

    def self.find_by_character(name)
        self.all.select do |character|
            character.name.downcase == name
        end 
    end 

end 
class Location
    attr_accessor :name, :type, :dimension

    @@all = []

    def initialize(name: nil, type: nil, dimension: nil)
        @name = name
        @type = type
        @dimension = dimension
        @@all << self
    end 

    def self.all
        @@all  
    end 

    def self.find_by_location(name)
        self.all.select {|l| l.name == name}
    end 

end 
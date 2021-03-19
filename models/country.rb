class Country

    attr_reader :name, :capital, :location, :population 

    @@all = []

    def initialize(hash)
        @name = hash["name"]
        @capital = hash["capital"]
        @location = hash["subregion"]
        @population = hash["population"]
        @@all << self
    end

    def self.all
        @@all
    end

end
class Country

    attr_reader :name, :capital, :location, :population, :language, :currency

    @@all = []

    def initialize(hash)
        @name = hash["name"]
        @capital = hash["capital"]
        @location = hash["subregion"]
        @population = hash["population"]
        @language = hash["languages"][0]["name"]
        @currency = hash["currencies"][0]["name"]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end
    
    def self.region_population
        country_population.inject{|sum, n| sum + n}
    end

    private

    def self.country_population 
        self.all.collect{|country| country.population}
    end

end
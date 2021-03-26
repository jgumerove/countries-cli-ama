
class Europe
    attr_reader :response

    def initialize
        @response = HTTParty.get("https://restcountries.eu/rest/v2/region/europe")
    end
end

class Asia
attr_reader :response 

    def initialize
        @response = HTTParty.get("https://restcountries.eu/rest/v2/region/asia")
    end
end

class Africa
    attr_reader :response

    def initialize
        @response = HTTParty.get("https://restcountries.eu/rest/v2/region/africa")
    end

end

class Oceania
    attr_reader :response
    
    def initialize
        @response = HTTParty.get("https://restcountries.eu/rest/v2/region/oceania")
    end

end

class Americas
    attr_reader :response

    def initialize
        @response = HTTParty.get("https://restcountries.eu/rest/v2/region/americas")
    end

end


        



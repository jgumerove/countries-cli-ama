class CountriesAPI

    attr_reader :response

    def initialize
        @response = HTTParty.get("https://restcountries.eu/rest/v2/region/europe")
    end


end
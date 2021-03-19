class CLI

    def initialize
        welcome
        #CountriesAPI.new.response.each{|country_hash| Country.new(country_hash)}
    end


    def welcome
        puts "Welcome to Countries CLI, a go to gem for information on European Countries"
    end


end
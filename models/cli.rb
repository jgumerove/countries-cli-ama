class CLI

    def initialize
        welcome
        country_list
        #CountriesAPI.new.response.each{|country_hash| Country.new(country_hash)}
    end


    def welcome
        puts "Welcome to Countries CLI, a go to gem for information on European Countries"
        puts "below is a list of all the countries in europe:"
    end

    def menu
    end

    def country_list
        Country.all.each_with_index do |country, index|
            puts "#{index + 1}. #{country.name}"
        end
    end




end
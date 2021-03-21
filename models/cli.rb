class CLI

    def initialize
        country_list
        menu
        #CountriesAPI.new.response.each{|country_hash| Country.new(country_hash)}
    end


    def welcome
        puts "Welcome to Countries CLI, a go to gem for information on European Countries"
        puts "Europe is a continent with a population of approximately #{Country.euro_population} million people"  
    end

    def menu
        puts "below is a list of all the countries in europe:"
        input = nil
        while input != "exit"
            puts "Enter the number of the country you would like more information on - or type list to see the list of countries again - or type exit:"
            input = gets.strip.downcase

            if input.to_i > 0 
                the_country = Country.all[input.to_i-1]
                puts "**********#{the_country.name.upcase}**********"
                puts "     #{the_country.capital}"  #5 indents
                puts "     #{the_country.capital}"

            elsif input == "list"
                country_list

            else
                puts "that is not a valid option - select a country number from the list - type list to view the options again - or type exit"
            end
        end
    end

    def country_list
        welcome
        Country.all.each_with_index do |country, index|
            puts "#{index + 1}. #{country.name}"
        end
    end




end
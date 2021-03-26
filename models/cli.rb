class CLI

    def initialize
        welcome
        country_list
        menu
    end


    def welcome
        puts "Welcome to Countries CLI, a go to application for information on Countries and Regions"
        select_region   
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the country you would like more information - type list to see the list of countries again - type region to select a new region - or type exit to leave:"
            input = gets.strip.downcase

            if input.to_i > 0 && input.to_i <= Country.all.count
                the_country = Country.all[input.to_i-1]
                puts "**********#{the_country.name.upcase}**********"
                puts "     Capital: #{the_country.capital}"  
                puts "     Region: #{the_country.location}"
                puts "     Population: #{the_country.population}"
                puts "     Language: #{the_country.language}"
                puts "     Currency: #{the_country.currency}"
                puts "**********#{the_country.name.upcase}**********"

            elsif input == "list"
                country_list
            elsif input == "region"
                Country.reset_all
                select_region
                country_list
            elsif input =="exit"
                goodbye
            else
                puts "that is not a valid option:"
            end
        end
    end

    def country_list
        Country.all.each_with_index do |country, index|
            puts "#{index + 1}. #{country.name}"
        end
    end

    def select_region
        puts "Please select one of the following regions by typing the name: 1) Africa 2) Asia 3) Europe 4) Oceania 5) Americas"
        input = gets.strip.capitalize
        case input
        when "Africa"
            Africa.new.response.each{|country_hash| Country.new(country_hash)}
            region_details(input)
            puts "Below is a list of all the countries of #{input}:"
        when "Asia"
            Asia.new.response.each{|country_hash| Country.new(country_hash)}
            region_details(input)
            puts "Below is a list of all the countries of #{input}:"
        when "Europe"
            Europe.new.response.each{|country_hash| Country.new(country_hash)}
            region_details(input)
            puts "Below is a list of all the countries of #{input}:"
        when "Oceania"
            Oceania.new.response.each{|country_hash| Country.new(country_hash)}
            region_details(input)
            puts "Below is a list of all the countries of the #{input} region:"
        when "Americas"
            Americas.new.response.each{|country_hash| Country.new(country_hash)}
            region_details(input)
            puts "Below is a list of all the countries of the #{input} region:"
        else
            puts "that is not a valid option please type the region you would like more information on"
            select_region
        end
    end

    def goodbye
        puts "Thank you for using the application - hope to see you soon!"
    end

    private

    def region_details(input)
        puts "#{input} is a region with a population of approximately #{Country.region_population} million people"
    end


end
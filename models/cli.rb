class CLI

    def initialize
        welcome
        country_list
        menu
    end


    def welcome
        puts "Welcome to Countries CLI, a go to gem for information on European Countries"
        puts "Europe is a continent with a population of approximately #{Country.euro_population} million people"
        puts "Below is a list of all the countries of Europe:"  
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the country you would like more information on - or type list to see the list of countries again - or type exit:"
            input = gets.strip.downcase

            if input.to_i > 0 && input.to_i <= Country.all.count
                the_country = Country.all[input.to_i-1]
                puts "**********#{the_country.name.upcase}**********"
                puts "     Capital: #{the_country.capital}"  
                puts "     Region: #{the_country.location}"
                puts "     Population: #{the_country.population}"
                puts "     Language: #{the_country.language}"
                puts "     Currency: #{the_country.currency}"
                puts "****************************"

            elsif input == "list"
                country_list
            elsif input =="exit"
                goodbye
            else
                puts "that is not a valid option - type list or exit"
            end
        end
    end

    def country_list
        Country.all.each_with_index do |country, index|
            puts "#{index + 1}. #{country.name}"
        end
    end

    def goodbye
        puts "Thank you for using the application - hope to see you soon!"
    end




end
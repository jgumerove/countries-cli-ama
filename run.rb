require_relative 'config/environment.rb'

CLI.new

=begin
prompt = TTY::Prompt.new
color = prompt.ask("what's your favorite color")
puts "Your favorite color is #{color}"
color = prompt.multi_select("What is your favorite of these colors", ["Red", "white", "Blue"])
puts "Your favorite color is #{color}"
=end

#similar to gets.chomp but more functionality 
#look into TTY prompt documentation to see if will be helpful

binding.pry
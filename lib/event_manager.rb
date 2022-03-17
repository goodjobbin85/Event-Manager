require 'csv' 

puts "Welcome to Event Manager!" 

content = CSV.open("attendees.csv", headers: true)
content.each do |line| 
    name = line[2]
    p name
end 

require 'csv' 

puts "Welcome to Event Manager!" 

content = CSV.open(
    "attendees.csv",
     headers: true, 
     header_converters: :symbol 
) 

content.each do |line| 
    name = line[:first_name] 
    zip_code = line[:zipcode] 

    if zip_code.nil? 
        zip_code = '00000' 
    elsif zip_code.length < 5 
        zipcode = zip_code.rjust(5, '0') 
    elsif zip_code.length > 5 
        zip_code = zip_code[0..4] 
    end 

    puts "#{name}: #{zip_code}"
end 

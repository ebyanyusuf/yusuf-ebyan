# OUTPUT 2

file = File.open("Commas.txt")

arr = []
male = []
female = []
file.each do |line|

    remove = line.gsub(/\s.\s/, " ")

    test = remove.gsub(",", " ")

    final = test.gsub("-", "/")



    if final.include? "Male"
        male << final 
    else 
        female << final

    end 

  
    
end

pipes = File.open("Pipes.txt")

pipes.each do |line|
 
    remove = line.gsub(/\s.\s/, " ")

    pipes_gender = remove.gsub("M", "Male")
    pipes_gender = pipes_gender.gsub("F", "Female")

    pipes_test = pipes_gender.gsub("|", " ")

    pipes_final = pipes_test.gsub("-", "/")

    if pipes_final.include? "Male"
        male << pipes_final 
    else 
        female << pipes_final

    end
    
end

spaces = File.open("Spaces.txt")



spaces.each do |line|


    
    remove = line.gsub(/\s.\s/, " ")

    spaces_gender = remove.gsub("F", "Female")

    spaces_final = remove.gsub("-", "/")

    if spaces_final.include? "Male"
        male << spaces_final 
    else 
        female << spaces_final

    end 


    
end

male.sort!
female.sort!


arr << female 

arr << male

puts arr 




# Hingis Martina Female 4/2/1979 Green
# Kelly Sue Female 7/12/1959 Pink
# Kournikova Anna Female 6/3/1975 Red
# Seles Monica Female 12/2/1973 Black
# Abercrombie Neil Male 2/13/1943 Tan
# Bishop Timothy Male 4/23/1967 Yellow
# Bonk Radek Male 6/3/1975 Green
# Bouillon Francis Male 6/3/1975 Blue
# Smith Steve Male 3/3/1985 Red
    



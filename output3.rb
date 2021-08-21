# OUTPUT 2

file = File.open("Commas.txt")

arr = []

file.each do |line|

    remove = line.gsub(/\s.\s/, " ")

    test = remove.gsub(",", " ")

    final = test.gsub("-", "/")

  arr << final
    
end

pipes = File.open("Pipes.txt")

pipes.each do |line|
 
    remove = line.gsub(/\s.\s/, " ")

    pipes_gender = remove.gsub("M", "Male")
    pipes_gender = pipes_gender.gsub("F", "Female")

    pipes_test = pipes_gender.gsub("|", " ")

    pipes_final = pipes_test.gsub("-", "/")

    arr << pipes_final
    
end

spaces = File.open("Spaces.txt")



spaces.each do |line|


    
    remove = line.gsub(/\s.\s/, " ")

    spaces_gender = remove.gsub("F", "Female")

    spaces_final = remove.gsub("-", "/")

   

arr << spaces_final
    
end





puts arr.sort{|a, b| b <=> a}








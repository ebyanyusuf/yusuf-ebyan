file = File.open("Spaces.txt")

arr = []

file.each do |line|

    
   

    gender = line.gsub("F", "Female")

    final = gender.gsub("-", "/")

    arr << final

    arr.sort! 
end

print arr.join

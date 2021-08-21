arr = []
male = []
female = []

# OUTPUT1
file = File.open("Commas.txt")

file.each do |line|

    commas_removed = line.gsub(",", "")
    dash_removed = commas_removed.gsub("-", "/")
    separated = dash_removed.split(" ")
    temp = separated[3]
    separated[3] = separated[4]
    separated[4] = temp 
    if line.include? "Male"
        male << dash_removed
    elsif line.include? "Female"
        female << dash_removed
    end
    
end

pipes = File.open("Pipes.txt")

pipes.each do |line|
    
    pipes_removed = line.gsub("|","")
    dash_removed = pipes_removed.gsub("-", "/")
    separated = dash_removed.split(" ")
    separated.delete_at(2)
    temp = separated[3]
    separated[3] = separated[4]
    separated[4] = temp

    separated[2] = separated[2] == "M" ? "Male" : "Female"
    
    if (separated[2] == "Male")
        male << separated.join(" ")
    else 
        female << separated.join(" ")
    end
end

spaces = File.open("Spaces.txt")

spaces.each do |line|
    
    dash_removed = line.gsub("-", "/")
    separated = dash_removed.split(" ")
    separated.delete_at(2)
    separated[2] = separated[2] == "M" ? "Male" : "Female"
    if (separated[2] == "Male")
        male << separated.join(" ")
    else 
        female << separated.join(" ")
    end
    
end

male.sort!
female.sort!

arr << female 

arr << male

puts arr






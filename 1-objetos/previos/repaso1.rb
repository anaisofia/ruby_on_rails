class Person
 def initialize(name, age)
 @name = name
 @age = age
 end
end
file = File.open('sample.txt',
"r")
data = file.readlines
file.close
people = []
data.each do |line|
 ls = line.split(', ')
 people << Person.new(*ls)
end
puts people

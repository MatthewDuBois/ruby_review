# loops

3.times do
  p "hello, joe"
end

count = 0

3.times do
  p count
  count += 1
end

array = ["jim", "bob", "steve"]

3.times do |index|
  p array[index]
end

array.length.times do |index|
  name = array[index]
  p name
end

# each loops interate thru each element in an array without having to specify the index or how many times 
array.each do |name|
  p name
end  


# while
count = 10 
while count > 0 
  puts "count"
  count -= 1
end

# until
count = 10 
until count > 0 
  puts "count"
  count -= 1
end
# this loop will not run at all
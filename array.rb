my_first_array = []

my_first_array[0] = "Alpha"
my_first_array[1] = "Beta"
my_first_array[2] = 3

#initializing and filling the array in one step:
my_first_array = [ "Alpha", "Beta", 3]

puts my_first_array[1]
#=> Beta

puts my_first_array.length
#=> 3

my_first_array = my_first_array.reverse
puts my_first_array.join(",")
#=> 3, Beta, Alpha

arr = [1,2,3,4,5,6]
for x in 0..(arr.length-1)
    puts arr[x]
end

#or, with while:

x = 0
while x < arr.length
    puts arr[x]
    x += 1
end

arr.each{ |x| puts x}
# using the equivalent do..end construct:

arr.each do |x|
    puts x
end

arr = [ 'cat', 'dog', 'pony', 'bird' ]
arr.each_with_index do |str, idx|
    puts "#{str} and #{arr[idx-1]} show"
end

arr = [ 'dog', 'cat', 'bear' ]
arr.push('penguin', 'fox')

puts arr.join("-")
puts arr[0]

arr = ['dog', 'cat', 'bear']
arr.push('penguin', 'fox')
puts arr.join(',')

new_arr = ["dog", 7, 42, "cat"]
new_arr << 42
puts new_arr.join(",")

arr = ["Atlanta", "Boston", "Chicago", 42]
arr.pop
puts arr.join(',')



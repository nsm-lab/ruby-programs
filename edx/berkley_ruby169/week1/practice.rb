(0...5).each do |i| print i end
h = {:b => 5, :c => 6}
puts
puts h

('hello').each_char do |x| puts x end
s = :octocat
puts s
puts s
sx = :octocat.to_s
puts sx
puts
puts 'Hi I am Qazi'.length
puts
puts 'Hi I am Qazi'.reverse
puts 'Hi I am Qazi'.downcase
puts 'Hi I am Qazi'.upcase
puts 'Hi I am Qazi'.reverse.downcase.upcase  # chain them together
3.times do print 'hello' end
puts
3.times { puts 'hello' }
puts
qazi = 'qazi'
puts qazi.upcase  # does not change in place
puts qazi  # proof of NOT being changed in place
puts qazi.upcase!  # changes in place
puts qazi  # proof of being changed in place

# Multi Line Comments below!
=begin
Hello How are you doing sir
=end
puts 1.class
puts 'hello'.class
puts "hello".class
puts :b.class

# if not == unless
num = false
unless num
  print("hi")
end

num, b = [1, 2]
puts
puts(num, b)
p a: num, b: b

def method
  yield self
end

place = 'world'
method do |obj; place|
  place = 'block'
  puts "hello #{obj} this is #{place}"
end

puts "place is: #{place}"

def my_method(arg1, arg2, arg3)
  puts arg1, arg2, arg3
end

arguments = [1, 2, 3]
my_method(*arguments)

def my_method2(*args)
  args.each do |x| puts x end
end

my_method2 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
my_method2('a', 'b', 'c', 'd', 5, 6, 7, 8, 9, 10)
my_method2(*arguments)

arr = Array.new(3, true)
print(arr)  # [true, true, true]
qazi = 21
puts
print qazi.equal? 21
if qazi == 21
  puts
  print("Yeah, he is 21")
  puts
end

def cool_gets
  input_type = gets =~ /hello/i ? "greeting" : "breh"
  puts
  print input_type
end

def another_cool_gets
  input_type =
      if gets =~ /hello/i
        "greeting"
      else
        "breh"
      end
  puts input_type
end

# another_cool_gets

unless qazi > 30
  puts
  print('SUPPPP')
  puts
end

qazi = 20
qazi += 1 if qazi.even?
puts
print(qazi)  # -> 21
# Unless Qazi IS greater than 30... Do this.
# Unless is the equivalent of if not.
# The expression below takes the form of <then> <test>
qazi += 1 unless qazi > 30
puts
print(qazi)  # -> 22
puts
print(1 === 1)  # object identity (as opposed to equality)

case 'BoxeyStUfFs'
  # ^ means look for the first one.
  # i means ignorecase.
  when /^b/i
    puts
    print('I FOUND IT!!!')
  else
    puts
    print('Nope, couldn\'t find it')
end

case 'bROski'
  when /bro/i  # i for ignorecase
    puts
    print('Found broski it!!!')
  else
    puts
    print('Nope, couldn\'t find it')
end

# ======= WHILE LOOPS ===========
# Example 1
puts
num = 0
print('While do loop result: ')
while num < 10 do
  print(num)
  num += 1
end

# Example 2 --> Python like loop without do
puts
print('While loop result: ')
num = 0
while num < 10
  print num
  num += 1
end

# Example 3 --> Modifier while loop <exp> <test>
num = 0
# <EXP>  <TEST>
num += 1 while num < 10
puts
print('num: ', num)

# Example 4 --> Execute the loop at LEAST once.
puts
num = 100
begin
  num += 1
end while num < 1
print('begin num: ', num)

puts
# ======= UNTIL LOOPS ===========
# Example 1
num = 0
print("Until loop result: ")
# How to read it:
# Keep looping UNTIL the number is greater than 10, then stop.
until num > 10 do
  print(num)
  num += 1
end

# Example 2 --> Python like loop without do
num = 0
until num > 10
  print(num)
  num += 1
end

# Example 3 --> Modifier until loop <exp> <test>
num = 0
# <EXP>  <TEST>
num += 1 until num > 10
puts
print('until num result: ', num)

# ========= FOR LOOPS ===========
# Example 1
puts
print('result of for do loop: ')
for value in [1, 2, 3] do
  print value
end

# Example 2 --> Python like loop without do
puts
print('result of for loop: ')
for value in [1, 2, 3]
  print value
end

# More Ruby-onic (idiomatic for loop)
# Example 1 --> do is NOT optional in this case
puts
print('result of idiomatic for loop: ')
[1, 2, 3].each do |value|
  print(value)
end

# ======= BREAK ========
# Example 1
puts
print('result values: ')
result = [1, 3, 5, 7, 8].each do |value|
  print(value)
  break value * 2 if value.even?
end
puts
print(result)

# Python way to write this
puts
print('result python values: ')
for value in [1, 3, 5, 7, 8]
  print(value)
  if value % 2 == 0
    value *= 2
    break
  end
end
puts
print(result)

# ========= NEXT ===========
# Example 1
puts
result = [1, 2, 3].map do |value|
  next if value.even?
  puts(value)  # 1, 3. 2 is skipped because it is even.
  value * 2
end
puts
print('result map next: ', result)

# Example 2 --> Another way of writing it
puts
result = [1, 2, 3].map do |value|
  if value.even?
    next
  end
  value * 2
end
print('result map next: ', result)


# STUDY THE ENUMERATOR CLASS!!!!!!!!!!!
puts('Entered the enumerator class')
enumerator = ['a', 'b', 'c'].each
puts enumerator.class  # --> Enumerator
enumerator.each_with_index do |item, index|
  puts "#{index}. #{item}"
end

# .each is a generator! (External iterator)
puts
lol = [1, 2, 3].each
puts(lol.next)  # => 1
puts(lol.next)  # => 2
puts(lol.next)  # => 3

puts
test = [1, 2, 3, 4, 5]
test.each do |value|
  if value == 4..value == 5
    puts 'hello! it\'s me!'
  end
end

puts 'con' 'cat' 'en' 'ation'
# can't have percent sign at the end!
puts %q{what is } 'up ' 'cuz!'

expected_result = <<-'EXPECTED'  # EXPECTED has to match EXPECTED at end
One plus one is #{1 + 1}
EXPECTED

p expected_result

# ranges
# Example 1 --> python range equivalent. So I am going to be using this lol :D.
(0...5).each do |value|
  puts(value)
end
# Example 1 --> python range equivalent. So I am going to be using this lol :D.
foo ||= []  # creates an empty list foo IF foo does NOT already exist. Idiomatic Ruby
(0..5).each do |value|
  puts(value)
  foo << value
end

print(foo, "\n")
print(foo[2..-1], "\n")
print(foo[2, foo.size], "\n")
print(foo[2, foo.length], "\n")
# help(Array)
start_time = Time.now
puts(Time.now)
puts(Time.now.tuesday?)  # returns a boolean
puts(Time.now.to_s[0..9])
# puts(start_time[3])

# ====== split or SPLIT ========
string1 = 'hello'
print(string1.split(//))  # split by every character.
puts
string2 = 'hello boys dog cuz'
print(string2.split)  # split by every space.
puts
string3 = 'hello, boys, dog, cuz'
print(string3.split(','))  # split by every comma.

puts
puts(Time.now)
puts(Time.now.tuesday?)
if Time.now.monday? then
  puts('Yayyy')
else
  puts('no!!!')
end
puts 'starting loop: '
result ||= []
times_to_run = gets.chomp.to_i
(0...times_to_run).each do
  result << gets.chomp.to_i
end

result1
print result1.inject(:+)

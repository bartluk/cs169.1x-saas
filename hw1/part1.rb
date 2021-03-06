#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  only_letters = str.gsub(/\W/, '').downcase
  only_letters == only_letters.reverse
end

def count_words(str)
  result = Hash.new(0)
  str.downcase.scan(/\w+/i).each do |word|
    result[word] += 1
  end
  result
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"
if palindrome? test_str
  puts 'Error'
else
  puts 'Ok'
end

test_str = "Madam, I'm Adam!"
if palindrome? test_str
  puts 'Ok'
else
  puts 'Error'
end

test_str = "A man, a plan, a canal -- Panama"
if palindrome? test_str
  puts 'Ok'
else
  puts 'Error'
end

test_str = "Abracadabra"
if palindrome? test_str
  puts 'Error'
else
  puts 'Ok'
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"
if (count_words test_str) == {'the' => 5, 'rent' => 1, 'is' => 1, 'due' => 1, 'on' => 2, 'first' => 2, 'day' => 2, 'of' => 2, 'month' => 2, 'unless' => 1, 'falls' => 1, 'a' => 1, 'saturday' => 1, 'or' => 1, 'sunday' => 1}
  puts 'Ok'
else
  puts('Error' + count_words(test_str).to_s)
end

test_str = "A man, a plan, a canal -- Panama"
if (count_words test_str) == {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
  puts 'Ok'
else
  puts('Error' + count_words(test_str).to_s)
end

test_str = "Doo bee doo bee doo"
if (count_words test_str) == {'doo' => 3, 'bee' => 2}
  puts 'Ok'
else
  puts('Error' + count_words(test_str).to_s)
end

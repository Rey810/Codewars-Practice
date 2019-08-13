#Enumerable collect

#changes each character in string to a letter 13 places down the alphabet
def rot13(secret_messages)
    secret_messages.map { |char| char.tr("a-z", "n-za-m") }
end

#Vowel Count
def getCount(inputStr)
   inputStr.count('aeiou')
end

#Exes and Ohs
def XO(str)
  str.downcase.count('o') == str.downcase.count('x')
end

#Sum of Numbers
def get_sum(a,b)
  #return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
end

#Complementary DNA
def DNA_strand(dna)
  dna.tr("ATGC", "TACG")
end

#Highest and Lowest
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(" ")
end

#Sum of two lowest positive integers
def sum_two_smallest_numbers(numbers)
 numbers.min(2).reduce(:+)
end

#Equal Sides of an Array
def find_even_index(arr)
  arr.length.times do |i|
    if arr[0...i].reduce(0, :+) == arr[i+1..-1].reduce(0, :+)
      return i
    end
  end
  -1
end

#Remove String Spaces
def no_space(x)
  x.tr(" ", "")
end

#Categorize new Member
def openOrSenior(data)
  data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }
end

#Is n divisble by x and y?
def is_divisible(n,x,y)
  (n % x == 0) && (n % y == 0)
end

#Count the smiley faces
def count_smileys(arr)
  arr.count { |face| face =~ /(:|;){1}(-|~)?(\)|D)/ }
end

#Friend or Foe?
def friend(friends)
  #friend has a name of 4 letters
  friends.select { |friend| friend.length == 4 }
end

#Rot13
def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

#Odd or Even?
def odd_or_even(array)
  array.sum.even? ? 'even' : 'odd'
end

#Maximum Length Difference
def mxdiflg(a1, a2)
  if a1.empty? || a2.empty?
    return -1
  end
  a1.product(a2).map {|x,y| (x.length - y.length).abs}.max
end

#Get the middle character
def get_middle(s)
  s.length.even? ? s[s.length/2 -1] + s[s.length/2] : s[s.length/2]
end

#Jaden Casing Strings
class String
  def toJadenCase
    self.split.map(&:capitalize).join(" ")
  end
end

#The highest profit wins!
def min_max(lst)
  lst.minmax
end

#Shortest Word
def find_short(s)
    s.split.min_by(&:length).length
end

#Sum of a sequence
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

#String ends with?
def solution(str, ending)
  str.end_with?(ending)
end

#Count characters in your string
def count_chars(s)
  count = Hash.new(0)
  s.split("").each do |x|
    count[x] += 1
  end
  count
end

#Printer Errors
def printer_error(s)
  #find characters not contained in a-m
  #represent as a fraction
  "#{s.count("n-z")}/#{(s.length)}"
end

#sorted? yes? no? how?
def is_sorted_and_how(arr)
    arr == arr.sort ? "yes, ascending" : arr == arr.sort.reverse ? "yes, descending" : "no"
end

#Anagram detection
def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

#Regex password validation
#match if:
# one uppercase
# one lowercase
# one digit 
# no special characters
# at least 6 characters long
regex=/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/



def kebabize
  str.gsub(/[0-9]/, "").split(/(?=[A-Z])/).join("-").downcase
end

#abbreviate words of more than 4 letters 
#to show the 1st letter + the # of letters 
#between the first and last + the last letter
class Abbreviator

  def self.abbreviate(string)
    string.gsub /(\w)(\w+{2})(\w)/ do |word|
      "#{$1}#{word.length-2}#{$3}" 
      end
  end
  
end

#decode some dubstepified string
def song_decoder(song)
  song.gsub("WUB", " ").gsub(/\s+/, " ").strip
end




#Encrypt this!
=begin
    Your message is a string containing space separated words.
    You need to encrypt each word in the message using the following rules:
        The first letter needs to be converted to its ASCII code.
        The second letter needs to be switched with the last letter
    Keepin' it simple: There are no special characters in input.
=end

def encrypt_this(text)
  x = text.split(" ")
  x.map! do |word, index|
    if x[0].length == 1 || word.length == 1
      "#{word[0].codepoints.join()}"
    elsif word.length == 2
      "#{word[0].codepoints.join()}#{word[1]}"
    else
    "#{word[0].codepoints.join()}#{word[-1]}#{word[2..-2]}#{word[1]}"
    end
  end
  x.join(" ")
end

#Refactored to:
def encrypt_this(text)  
  text.split.map { |word|
    word[-1], word[1] = word[1], word[-1] if word.size > 2
    word[0] = word[0].ord.to_s
    word
    } .join(" ")
end

# +1 array 
def up_array(arr)
  return nil if arr.empty? || arr.any? {|num| 0 > num || num > 9 }
  (arr.join.to_i + 1).to_s.split("").map(&:to_i)
end

#add a dash before and after each odd number 
def dashatize(num)
  num ? num.to_s.scan(/[02468]+|[13579]/).join("-") : "nil"
end


#autocomplete input with matches found in a dictionary
def autocomplete(input, dictionary)
  mod_input = input.gsub(/[^a-zA-Z]/,"") 
  dictionary.select { |word| word if word.start_with?(mod_input.downcase) || word.start_with?(mod_input.capitalize)}
    .first(5)
end


#string input of names (eg. "Rey:van den Berg;Joe:Blythe")
#sort by last name and return in this format  "(BLYTHE, JOE)(VAN DEN BERG, REY)"
def meeting(s)
    s
    .upcase
    .split(";")
    .map { |name| name.split(":") }
    .sort_by { |first, last| [last, first]}
    .map { |first, last| "(#{last}, #{first})"}
    .join
end


# Find out which one of the given numbers differs from the others. 
# One number usually differs from the others in evenness. 
# Find one that is different in evenness, and return a position of this number.
def iq_test(numbers)
  x = numbers.split.map(&:to_i).map(&:even?)
  x.count(true) > 1 ? x.index(false) : x.index(true)
end

#This kata is designed to test your ability to extend the functionality of built-in classes. 
#In this case, we want you to extend the built-in Array class with the following methods: 
#square(), cube(), average(), sum(), even() and odd().

class Array
  def square
    map {|x| x*x}
  end

  def cube
    map {|x| x**3}
  end
  
  def average
    sum / size
  end
  
  def sum
    reduce(:+)
  end
  
  def even
    select(&:even?)
  end
  
  def odd
    select(&:odd?)
  end
end
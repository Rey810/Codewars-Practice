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

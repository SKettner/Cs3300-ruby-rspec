# When done, submit this entire file to the autograder.

# Part 1

#using sum function to sum an arr
#https://www.geeksforgeeks.org/ruby-enumerable-sum-function/#:~:text=The%20sum()%20of%20enumerable,is%20empty%2C%20it%20returns%20init.
def sum arr
  return arr.sum
end


#using max fuction to find the max numbers of arr and then sum it 
#https://www.digitalocean.com/community/tutorials/how-to-work-with-arrays-in-ruby
def max_2_sum arr
  return arr.max(2).sum
end

#suming every number within arr with everyother number
#https://code-maven.com/for-loop-in-ruby
def sum_to_n? arr, n
 
  for x in (0..(arr.length()-1))

    for y in (0..(arr.length()-1))

      #making sure we do not sum the number with it self
      if x==y

      #if the sum of the two numbers = n return true
      elsif n == (arr[x]+arr[y])

        return true

      end

    end

   end

   return false

end

# Part 2

#adding hello before the name
def hello(name)
  temp = "Hello, "
  temp += (name)
end

#testing if string starts with consonant
def starts_with_consonant? s
  if s.empty?
    s = "a"
  end
  #converts first entry in string to lower case and tests if it is a consonant
  if s[0].downcase.match(/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z/)
    return true
  end
  return false
end


#tests if string s is a binary number divisible by 4
#http://matt.coneybeare.me/coding-challenge-how-to-convert-integers-to-binary-string-representations-in-ruby/
def binary_multiple_of_4? s
  #convert s to an int 
  temp = s.to_i
  #if s is empty fix that
  if s.empty?
    s = "a"
  end
  #if s is anything besides 0 or 1 and if temp is divisible by 4 without remainder return true
  if(temp % 4  == 0 && !(/[a-zA-Z^$2-9*]/.match(s)))
    return true
  end
  return false
end

# Part 3

#class that has an isbn and a price for a given book
#https://www.geeksforgeeks.org/ruby-class-method-and-variables/
#https://www.geeksforgeeks.org/ruby-getters-and-setters-method/#:~:text=these%20methods%20allow%20us%20to,instance%20variable%20of%20some%20class.
class BookInStock

  @@isbn = 0
  @@price = 0

  #initializer with isbn and price input
  def initialize(isbn, price)

    @@isbn = isbn
    @@price = price

    #makes sure price is not negitive
    raise ArgumentError.new(
      "Price can not be negitive"
    ) if price <= 0

    #makes sure isbn is not null
    raise ArgumentError.new(
      "ISPN can not be null"
    ) if isbn == ''

  end 

  #getter for isbn
  def isbn
    @@isbn
  end

  #setter for isbn
  def isbn=(isbn)
    @@isbn = isbn
  end

  #getter for price
  def price
    @@price
  end

  #setter for price
  def price=(price)
    @@price = price
  end

  #fuction that returns price as a string formated to to cash notation ($##.##)
  def price_as_string
  
    string_price = "%.2f" % @@price
    string_price.prepend("$") 
    return string_price

  end 
  

end

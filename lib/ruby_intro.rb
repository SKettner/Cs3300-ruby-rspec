# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.max(2).sum
end

def sum_to_n? arr, n
 
  for x in (0..(arr.length()-1))

    for y in (0..(arr.length()-1))

      if x==y

      elsif n == (arr[x]+arr[y])

        return true

      end

    end

   end

   return false

end

# Part 2

def hello(name)
  temp = "Hello, "
  temp += (name)
end

def starts_with_consonant? s
  if s.empty?
    s = "a"
  end
  if s[0].downcase.match(/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z/)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  temp = s.to_i
  if s.empty?
    s = "a"
  end
  if(temp % 4  == 0 && !(/[a-zA-Z^$2-9*]/.match(s)))
    return true
  end
  return false
end

# Part 3

class BookInStock

  @@isbn = 0
  @@price = 0

  def initialize(isbn, price)

    @@isbn = isbn
    @@price = price

    raise ArgumentError.new(
      "Price can not be negitive"
    ) if price <= 0

    raise ArgumentError.new(
      "ISPN can not be null"
    ) if isbn == ''

  end 

  def isbn
    @@isbn
  end

  def isbn=(isbn)
    @@isbn = isbn
  end

  def price
    @@price
  end

  def price=(price)
    @@price = price
  end

  def price_as_string
  
    string_price = "%.2f" % @@price
    string_price.prepend("$") 
    return string_price

  end 
  

end

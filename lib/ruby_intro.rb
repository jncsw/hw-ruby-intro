# When done, submit this entire file to the autograder.

# Part 1


def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
  # arr.sum()
  # arr.inject(0) { |result, element| result + element }
  
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum()
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  l = arr.length-1
  for i in 0..l do
    for j in i+1..l do
      if arr[i]+arr[j]==n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
  # return "Hello, "+String.try_convert(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  tok = s[0].capitalize
  return tok.match?('^[a-zA-Z]$') & ([tok] & ['A','E','I','O','U']).empty?
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return (s.match?("^[01]+$")) & (s.to_i(2) % 4 == 0)
  # if s == "0"
  #   return true
  # end
  # return (s.match?("^[01]+$")) & (s.length >2) & (s[-1] == '0') & (s[-2] == '0')
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn,:price
  def initialize(isbn,price) 
    if isbn.empty? or price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$"+format("%.2f",price).to_s
  end
  # def isbn
  #   @isbn
  # end

  # def isbn=(str)
  #   @isbn = str
  # end
  # def price
  #   @price
  # end

  # def price=(float)
  #   @price = float
  # end

end

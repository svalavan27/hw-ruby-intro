# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    sum = 0
  else
  a = (arr.length - 1)
  sum = 0
  while ( a >= 0 )
    sum = sum + arr[a].to_i
    a -= 1
  end
  sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  array_len = arr.length

   sum = 0
  case array_len
  when 0
  return sum
  when 1
  sum = arr[0]
  return sum 
  else 
    arr.sort! {|x,y| y<=>x }

  sum = arr[0] + arr[1]
  end
return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    arr_len = arr.length 
  #a = arr_len
  i = 0
  sum = 0
  case arr_len
  when 0
    return false
  when 1
    return false
  else 
    while arr_len >= 0
      while i <= arr_len
      sum = arr[arr_len-1].to_i + arr[i].to_i
      i += 1
      if sum == n 
        return true
        
      end
      end   
    arr_len -= 1
    end
    return false
  end    

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
     return false
  else
     return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #if s.chars.all? {|x| x = ~ /[01]/} == false
   if s.match(/\A[01]+\Z/) == nil
   
    return false 
  else
  value = s.to_i(2)
  if (value % 4 == 0)
    return true
  else
    return false
  end
   end
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

def initialize(isbn , price)
  @isbn = isbn
  @price = price


if isbn.empty?  
      raise ArgumentError.new("Book ISBN number is empty")
end
  
    unless price > 0
      raise ArgumentError.new("Book Price is less than or equal to zero")
    end
    
end

def price_as_string
  return "$#{sprintf('%.2f', price)}"
end
end

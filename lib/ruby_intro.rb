# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  $s = 0
  $i = 0
  while $i < arr.length do
   $s= $s + arr.at($i)
   $i+=1
  end
  return $s
end

def max_2_sum arr
  $len = arr.length
  if $len == 0
    return 0
  elsif $len ==1
    return arr.at(0)
  end
  $s = arr.at(0) > arr.at(1) ? arr.at(0) : arr.at(1)
  $s2 = arr.at(0) < arr.at(1) ? arr.at(0) : arr.at(1)
  $i = 2
  while $i < arr.length do
   $cur = arr.at($i)
   if $cur > $s 
     $s2 = $s
     $s = $cur
   elsif $cur >$s2 
     $s2 = $cur
   end
   $i+=1
  end
  return $s+$s2
end

 

def sum_to_n? arr, n
  h = Hash.new("no")
  arr.each do |x| 
    if (h[n-x]!="no") 
      return true
    else
      h[x]="yes"
    end
      
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  if s[0] == nil
    return false
  end
  $a = s[0].downcase
  return $a =~ /[[:alpha:]]/ &&$a != "a" && $a != "e" && $a != "i" && $a != "o" && $a != "u"
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  s.each_char do |x| 
    if !(x == "1" || x == "0")
      return false
    end
  end
  
  return s.to_i(2)%4 == 0
  
end

# Part 3

class BookInStock
  def initialize(s,n)
    if (s == '' || n <= 0)
      raise ArgumentError
    end
    @isbn = s
    @price = n
  end
  def isbn
    return @isbn 
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def price
    return @price 
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    return "$"+'%.2f' % @price.to_s
    #return "$"+@price.to_s
  end
end

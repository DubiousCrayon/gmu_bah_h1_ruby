# Return a reversed copy of the array

def reverse(an_array)

  # return an_array.reverse!
  index = an_array.length - 1
  an_array_new = []
  an_array.each {|x| 
                 an_array_new[index] = x
                index -= 1
                }
  return an_array_new
  
end

 

# Return a map of letters and counts of letters

# Letters should be lowercase before counting

# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}

def histogram(a_string)
  first = a_string[0].downcase  
  letter_hash = {first => 0}
  a_string.downcase.each_char { |index|
    if letter_hash[index]
      letter_hash[index] = letter_hash[index] + 1
    else  
      letter_hash[index] = 1
    end
  }
  return letter_hash

end

 

# Sum all the numbers in the array

# an_array can contain lots of different things

# Be sure to only sum the numbers

# (Hint: the is_a? method might be useful here)

def sum_only_numbers(an_array)

  count = 0
  an_array.map {|index| 
    if index.is_a? Fixnum or index.is_a? Float
      count += index
    end
    }
  return count

end

 

# For i from 1 to 100, return an array.

# The elements in the array should follow this algorithm:

# If i is a multiple of 3, the element is 'Fizz'

# If i is a multiple of 5, the element is 'Buzz'

# If i is a multiple of 3 and 5, the element is 'FizzBuzz'

# Otherwise, the element is simply the value of i

# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]

def fizzbuzz

  fb_array = (1..100).to_a
  for i in fb_array
    if i % 3 == 0
      if i % 5 == 0
        fb_array[i-1] = 'FizzBuzz'
      else 
        fb_array[i-1] = 'Fizz'
      end
    elsif i % 5 == 0
      fb_array[i-1] = 'Buzz'
    end
  end

end

 
# Uncomment each of these to test your functions

puts reverse([3,6,'dog']).inspect

puts histogram('The Quick brown fox').inspect

puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]

puts fizzbuzz.join("\n")
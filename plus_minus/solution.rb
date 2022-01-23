require 'json'
require 'stringio'

# 
# Complete the 'plusMinus' function below.
# 
# The function accepts INTEGER_ARRAY arr as parameter. 
# 
n = gets.to_i 
a = gets.split(' ').map(&:to_i)
pos,neg,zero = [0.0] * 3 
a.each do | i | 
    if i < 0 
        neg += 1 
    elsif i > 0 
        pos += 1 
    else 
        zero += 1 
    end 
end 

puts pos/n 
puts neg/n 
puts zero/n 


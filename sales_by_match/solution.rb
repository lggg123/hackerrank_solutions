#!/bin/ruby 

require 'json'
require 'stringio'

#
# Complete the 'sockMerchant' function below. 
# The function accepts following parameters:
#  1. INTEGER n 
#  2. INTEGER_ARRAY ar 
#

def sockMerchant(n, ar) 
    # Write your code here 
    num = 0 
    (0..n).each do |i| 
        gum = 1 
        (i+1..n).each do |j|
            if ar[i] == nil 
                next 
            end 
            if ar[i] == ar[j] and gum == 1 
                num += 1
                gum += 1 
                ar[j] = nil 
            end 
        end 
    end 
    num 
end 

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i 

ar = gets.rstrip.split.map(&:to_i)

result = sockMerchant n, ar 

fptr.write result 
fptr.write "\n"

fptr.close()



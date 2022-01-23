#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here 
    print (arr.sum - arr.max).to_s + " " + (arr.sum - arr.min).to_s 
end 

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr 
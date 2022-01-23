#!/bin/ruby 

require 'json'
require 'stringio'

# 
# Complete the 'diagonalDifference' function below.
# 
# The function is expected to return an INTEGER. 
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here
    leftdiag = rightdiag = 0 
    i = 0 
    n = arr.length 
    for i in (0...n)
        # arr is [i][i] because if it is [0][0]
        # then the first diagonal integer is that output 
        leftdiag += arr[i][i]
        # for the right diag if it is [0][2]
        # since the [0][2] integer is 3 we would name
        # that n so 3 - 1 - 0 would result to 2 
        # next is [1][1] we still set n = 3 since that is 
        # the length of the array  
        rightdiag += arr[i][n - 1 - i]
    end 
    (leftdiag-rightdiag).abs 
end 

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i 

arr = Array.new(n)

n.times do |i| 
    arr[i] = gets.rstrip.split.map(&:to_i)
end 

arr = Array.new(n)

n.times do |i| 
    arr[i] = gets.rstrip.split.map(&:to_i)
end 

result = diagonalDifference arr 

fptr.write result 
fptr.write "\n"

fptr.close()


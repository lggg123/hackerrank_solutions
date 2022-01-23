#/bin/ruby 

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here 
    leftdiag = rightdiag = 0 
    for i in (0...arr.length)
        # arr is [i][i] because if it is [0][0]
        # then the first diagonal integer is that output 
        leftdiag += arr[i][i]
        j = -1*(i+1)
        # for right diag if it is [0][2]
        # since the [0][2] integer is 3 we would name 
        # that n so 3 - 1 -0 
        rightdiag += arr[i][i]
    end 
    (leftdiag - rightdiag).abs 
end 

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n  = gets.strip.to_i 

arr. Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end 

result = diagonalDifference arr 

fptr.write result 
fptr.write "\n"

#!/bin/ruby 

require 'json'
require 'stringio'

#
# Complete the 'countApplesAndOranges' function below.
# 
# The function accepts following parmeters:
#  1. INTEGER s 
#  2. INTEGER t
#  3. INTEGER a 
#  4. INTEGER b 
#  5. INTEGER_ARRAY apples 
#  6. INTEGER_ARRAY oranges 
# The red region denotes the house, where s is the start point,
# and t is the endpoint. The apple tree is to the left of the house
# and the orange tree is to its right. 
# Assume the trees are located on a single point, where the apple tree
# is at point a, and the orange tree is at point b.
# When a fruit falls from its tree, it lands d units of distance from 
# its tree of origin along the x-axis. 
# * A negative valye of d means the fruit fell d units to the tree's 
# left, and a positive value of d means it falls d units to the tree's right.*
# Gven the value of d for m apples and n oranges, determine how many
# apples and oranges will fall on Sam's house (i.e., in the inclusive
# range [s, t])?

def countApplesAndOranges(s, t, a, b, apples, oranges)
    # Write your code here 
    puts apples.map{|apple| apple + a}.select{|apple| (s..t).include?(apple)}.count
    puts oranges.map{|orange| orange + b}.select{|orange| (s..t).include?(orange)}.count
end

first_multiple_input = gets.rstrip.split

s = first_multiple_input[0].to_i

t = first_multiple_input[1].to_i

second_multiple_input = gets.rstrip.split

a = second_multiple_input[0].to_i

b = second_multiple_input[1].to_i

third_multiple_input = gets.rstrip.split

m = third_multiple_input[0].to_i

n = third_multiple_input[1].to_i

apples = gets.rstrip.split.map(&:to_i)

oranges = gets.rstrip.split.map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
#!/bin/ruby 

require 'json'
require 'stringio'

def staircase(n)
    for row in 1..n 
        puts "#{'#' * row}".rjust(n)
    end 
end 

n = gets.strip.to_i 

staircase n 


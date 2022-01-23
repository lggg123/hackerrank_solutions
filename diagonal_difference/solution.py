#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr):
    # Write your code here 
    leftdiag = rightdiag = 0 
    for i in range(n):
        # in rightdiag for the first n would be 3 which is -2 and i 
        # starts at 0 
        # in this n is the number of integers in the array which is 3
        # since this is a 2d array it would look like so [[1,2,3],[4,5,6],[9,8,9]]
        # this is how it would print out an array like so.
        # 1 2 3 
        # 4 5 6 
        # 7 8 9 

        leftdiag += arr[i][i]
        rightdiag += arr[i][n -1 - i]

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    arr = []

    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))

    result = diagonalDifference(arr)

    fptr.write(str(result) + '\n')

    fptr.close()

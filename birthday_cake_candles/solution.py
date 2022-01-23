import math 
import os 
import random 
import re 
import sys 

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(arr):
    n = len(arr)
    maxnum = 0 
    count = 0 
    for i in range(n):
        if arr[i] > maxnum: 
            maxnum = arr[i]
            count = 1 
        elif arr[i] == maxnum:
            count += 1 
    return count 



if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    ar_count = int(input())

    ar = list(map(int, input().rstrip().split()))
#!/bin/python3 

import math
import os 
import random 
import re 
import sys 
from collections import Counter
# Complete the sockMerchant function below. 
def sockMerchant(n, ar):
    s = 0 
    for val in Counter(ar).values():
        s += val//2
    return s 
    # you set the num to 0 to add onto the number of sock pairs when 
    # found in the code below 
    # num = 0 
    # for i in range(0,n):
    #     gum = 1 
    #     for j in range(i+1,n):
    #         if ar[i] == None:
    #             continue 
    #         if ar[i] == ar[j] and gum == 1:
    #             num = num + 1
    #             gum = gum + 1
    #             ar[j] = None
    # return num 

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    ar = list(map(int, input().rstrip().split()))

    result = sockMerchant(n, ar)

    fptr.write(str(result) + '\n')

    fptr.close()
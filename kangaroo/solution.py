def kangaroo(x1,x2,v1,v2):
    if (v1 < v2):
        return "No"
    if ((x2-x1) % (v1-v2) == 0):
        return "Yes"
    else:
        return "No"
    


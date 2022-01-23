# 2 kangaroos on a number line ready to jump in a positive directions
# one starts at x1 and moves at a rate of v1 meters per jump
# second is x2 and v2 
# find a way to get both kangaroos at the same location at the same time
# if possible return yes, if not return no.

def kangaroo(x1,x2,v1,v2)
    if v2 < v1 and (x1-x2) % (v2-v1) == 0
        return "YES"
    else
        return "NO"
    end
end
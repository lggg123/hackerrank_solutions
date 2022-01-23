def gradingStudents(grades)
    # Write your code here 
    grades.map{ |i| 
        # If the value of grade is less than 38, no rounding occurs as 
        # the result will still be a failing grade.
        if i > 37 
            rem = i % 5
            next_multiple_of_five = (i + 5) - rem
            # if the difference between the grade and the next multiple of 5 is less 
            # than 3, round grade up to the next multiple of 5
            if next_multiple_of_five - i < 3
                next_multiple_of_five
            else
                i
            end
        else
            i
        end
    }
end
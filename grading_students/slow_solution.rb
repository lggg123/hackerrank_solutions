def gradingStudents(grades) 
    distance_hash = {}
    output = []

    grades.each_with_index do |grade, index| 
        # If the value of grade is less than 38, no rounding occurs as 
        # the result will still be a failing grade.
        if grade > 37 
            difference = 0
            # the until loop rounds grade up to the next multiple of 5
            until grade % 5 == 0 
                grade += 1 
                difference += 1 
            end
            distance_hash[grade] = difference
            # if the difference between the grade and the next multiple of 5 is less 
            # than 3, round grade up to the next multiple of 5
            if distance_hash[grade] < 3 
                output << grade 
            else
                output << grades[index]
            end
        else
            output << grade
        end
    end
    output
end
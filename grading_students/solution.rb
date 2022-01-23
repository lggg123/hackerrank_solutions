def gradingStudents(grades)
    grades.map{|e| (e > 37 && (e-5)%5 > 2) ? (e/5+1)*5 : e}
end
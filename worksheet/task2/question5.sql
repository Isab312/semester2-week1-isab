SELECT Student.StudentId, Student.FirstName, Student.LastName, Sum(Credits) As TotalCreditsPassed
FROM student
JOIN Enrolment on Student.StudentId=Enrolment.StudentId
JOIN Course on Enrolment.CourseId=Course.CourseId 
WHERE Enrolment.Grade >= 40
GROUP BY Student.StudentId, Student.FirstName, Student.LastName;
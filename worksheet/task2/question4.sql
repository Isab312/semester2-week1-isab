-- List all students along with the names of the courses they are enrolled in.

-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

Select Student.StudentId, Student.FirstName, Student.LastName, Course.CourseName
from Student
JOIN Enrolment on Student.StudentId=Enrolment.StudentId
JOIN Course on Enrolment.CourseId=Course.CourseId
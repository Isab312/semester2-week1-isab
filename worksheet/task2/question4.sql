-- List all students along with the names of the courses they are enrolled in.

-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

Select StudentId, FirstName, LastName, CourseName
from Student
JOIN Student on Student.StudentId=Enrolment.EnrolmentId
JOIN Enrolment on Enrolment.CourseId=Course.CourseId
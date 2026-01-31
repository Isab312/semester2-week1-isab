-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

Select Count(Enrolment.EnrolmentId) as TotalEnrolments, Department.DepartmentName
FROM Enrolment
JOIN Course ON Enrolment.CourseId = Course.CourseId
JOIN Department ON Course.DepartmentId = Department.DepartmentId
GROUP BY Department.DepartmentName;
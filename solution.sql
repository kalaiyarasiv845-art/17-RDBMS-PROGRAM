
CREATE OR REPLACE PROCEDURE InsertStudent (
 p_id IN NUMBER,
 p_name IN VARCHAR2,
 p_dept IN NUMBER
)
AS
BEGIN
 INSERT INTO Student (Student_ID, Student_Name, Department_ID)
 VALUES
 (p_id, p_name, p_dept);
 DBMS_OUTPUT.PUT_LINE(
 'Student record inserted successfully'
 );
END;
/
SET SERVEROUTPUT ON;
BEGIN
 InsertStudent(1005, 'Rahul', 101);
END;
/
SELECT Student_ID, Student_Name, Department_ID
FROM Student
WHERE Student_ID = 1005;
OUTPUT
Student record inserted successfully
STUDENT_ID STUDENT_NAME DEPARTMENT_ID

<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
15. Write a shell script to generate summary from a file : “student.dat” with following format :
com
Student_no : student_name : gender : marks1 : marks2 : marks3
Each field must be separated by a delimeter ‘-‘ 
Process the following queries:
1. Calculate the total marks of each student
2. Calculate the percentage of marks for each student
3. Count the total number of male and female students
4. Count the total number of students who pass and those who fail.

echo "Student No. | Student Name | Gender | Total Marks | Percentage"

# Process student.dat file using awk
awk -F ':' '{

total_marks = $4 + $5 + $6
percentage = (total_marks / 300) * 100

printf("%s | %s | %s | %d | %.2f%%\n", $1, $2, $3, total_marks, percentage)


if ($3 == "Male"){
        total_male++
} else {
        total_female++
}

if (total_marks >= 180) {
        total_pass++
} else {
        total_fail++
}

} END {
       printf("Total Male Students: %d\n", total_male)
       printf("Total Female Students: %d\n", total_female)
       printf("Total Pass Students: %d\n", total_pass)
       printf("Total Fail Students: %d\n", total_fail)
}' student.dat


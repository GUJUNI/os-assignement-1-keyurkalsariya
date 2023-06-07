<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
11. write a script to count number of vowels in file irrespective of case.
com

read -p "Enter file name : " file

if [ -f $file ]
then
        count=$(grep "[aeiouAEIOU]" $file | wc -l)
        echo "Count : " $count
else
        echo "File does not exist"
fi


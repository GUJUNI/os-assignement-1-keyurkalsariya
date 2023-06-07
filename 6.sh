<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
6. Write a script that takes file name from user and display all line start with space(‘ ‘) . (Use grep/sed)
com

read -p "Enter file name : " file

if [ -f $file ]
then
        grep "^[ ]" $file
else
        echo "File does not exists"
fi
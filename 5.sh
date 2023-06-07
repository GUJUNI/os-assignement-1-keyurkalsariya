<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
5. Write a script that takes file name from user and display all line start with t or T and second character must be either ‘h’ or ‘s’. (Use grep/sed)
com

read -p "Enter file name : " file

if [ -f $file ]
then
        grep "^[tT][hs]" $file
else
        echo "File does not exists"
fi

OUTPUT : 

Enter file name : file1.txt
thick shake
This is a cruel world


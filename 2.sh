<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
2. Write a script that takes file name from user and display all line starting not with a or b or c. (Use grep/sed)
com
read -p "Enter file name : " file

if [ -f $file ]
then
        grep -v "^[abc]" $file
else
        echo "File does not exists"
fi

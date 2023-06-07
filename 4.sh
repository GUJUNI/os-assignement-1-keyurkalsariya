<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
4. Write a script that takes file name from user and substitute all spaces “ “ with # value. (Use grep/sed)
com

read -p "Enter file name : " file

if [ -f $file ]
then
        newFileName=$file+"1"
        cp $file $newFileName
        sed 's/ /#/' $file
else
        echo "File does not exist"
fi

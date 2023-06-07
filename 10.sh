<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
10. Write a shell script to display list of files which can be either regular or directory along with number of links in ascending order of links.
com

ls -1la | awk '{print $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 " " $9}' | sort -n -k 2
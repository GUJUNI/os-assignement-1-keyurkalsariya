<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
8. Write a script that shows usernames and no. of processes running for them.
com
echo "processes and users "
ps -ef | awk '{print $1}' | sort | uniq -c
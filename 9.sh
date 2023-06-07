<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
com
9. The book master file contains the fields book_no, book_name, author, dateofpurchase ,each field is separated by hypen. write a script for
(A) Add
(b) Modify
(C) Delete
from above file.

flag=1

while [ $flag -eq 1 ]
do
        echo "1) Add"
        echo "2) Modify"
        echo "3) Delete"
        echo "4) Print"
        echo "5) Exit"
        read -p "Enter your choice : " choice

        case $choice in
                1)      read -p "Book Number : " bno
                        read -p "Book Name : " bname
                        read -p "Author : " author
                        read -p "Date of purchase : " dof

                        echo "$bno-$bname-$author-$dof" >> bookMaster.txt
                ;;
                2)      read -p "Enter book id : " bno
                        read -p "Enter new book id : " nbno
                        read -p "Book Name : " nbname
                        read -p "Author : " nauthor
                        read -p "Date of purchase : " ndof

                        awk -v id="$bno" -v new_record="$nbno-$nbname-$nauthor-$ndof" -F '-' '$1 == id { print new_record } $1 != id { print }' bookMaster.txt > temp.txt && mv temp.txt bookMaster.txt

                ;;
                3)      read -p "Enter book id : " bno
                        awk -v id="$bno" -F '-' '$1 != id { print }' bookMaster.txt > temp.txt && mv temp.txt bookMaster.txt
                ;;
                4)      cat bookMaster.txt
                ;;
                5) flag=0 ;;
                *) echo "Invalid choice" ;;
        esac
done

10. Write a shell script to display list of files which can be either regular or directory along with number of links in ascending order of links.

ls -1la | awk '{print $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 " " $9}' | sort -n -k 2
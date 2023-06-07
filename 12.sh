<<com
Name	: Kalsariya keyur
Roll no	: 15
Class	: MCA-2
Subject : operating systems
Assignment : 2
===============================================================
12. write a script that accepts a string followed by one or more file names from command line and display no of lines that consists of given string each file.
com

if [ $# -lt 2 ]; then
        echo "Enter 2 command line arguments"
        exit 1
fi

SEARCH_STRING="$1"

shift

for FILENAME in "$@"; do
        COUNT=$(grep -c "$SEARCH_STRING" "$FILENAME")

        echo "File $FILENAME contains $COUNT lines with the string \"$SEARCH_STRING\""
done

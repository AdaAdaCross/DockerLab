#!/bin/sh

echo "Filesystem navigator"
echo
echo "It is possible to show the current directory,"
echo "   to go up to the directory above,"
echo "   go to the directory"
echo
echo "Author - Balzhit Lodonova"
echo

action=0
code=1
was_error=0

while [ "$code" -eq "1" ]
do
    echo "Enter the required action"
    echo "1 - show current directory" 
    echo "2 - climb the directory above"
    echo "3 - go to catalog"
    read action
    if [ "$action" -eq "1" ]
    then
        was_error=0
        echo "Current directory:"
        pwd
    else
    if [ "$action" -eq "2" ]
    then
        was_error=0
        cd ..
        echo "directory chenged to upper"
    else
    if [ "$action" -eq "3" ]
    then
        was_error=0
        echo "Available directories:"
        ls -d .*/ */
        echo "Enter directory name"
        read directory
        cd $directory
    else
        was_error=1
        echo "wrong command" >&2
    fi  
    fi
    fi

    echo "Continue? (1-yes, 0-no)"
    read code
done

if [ "$was_error" -eq "0" ]
then
exit 0
else
echo "exit with code 1"
exit 1
fi

#!/bin/bash

function convertFahren ()
{
    #Function will convert given number from Fahrenheit to Celcius
    
    #Check if user did not specify
    if [ "$1" = "" ]; then
        echo "Variable not set, assuming 100deg Fahrenheit.  Add as first argument to specify"
        num=100
    else
        num=$1  
    fi
    #arithmic operations will convert to Celcius
    let num-=32
    let num*=5
    let num/=9
    #Print out and return.  Return in case its needed later
    echo -n "Converted from Fahrenheit to Celcius is "
    echo $num
    return $num
}

function lsCount ()
{
    #Will count the number of files and/or subdirectories in the directory bash is run from
    echo -n "The number of files and subdirectories in this directory is "
    ls | grep -c ""
}

function trash ()
{
    if [ "$1" = "" ]; then
        echo "No file specified, will not move anything to trash.  Add as second argument to specify"
    else
        test=$(ls ~ | grep -c "Trash")
        if [ "$test" = "0" ]; then
            mkdir ~/Trash
            echo "...Folder ~/Trash not found and was created for you"
        fi
        mv $1 ~/Trash/
        echo "Done..."
    fi
    return
}
    #Uncomment to have a given number converted from Fahrenheit to Celcius.  Returns error if none is specified
#convertFahren $1

    #Uncomment to count the number of files and subdirectories in this directory
#lsCount

    #Uncomment to move a given file to the Trash folder, or make it if not available.  I did not
    #give an error message if the file does not exist b/c the command I used (mv) already does
    #I did, however, give an error if no file was specified
#trash $1


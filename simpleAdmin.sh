#!/bin/bash
#--------------------------------------------------------------------------
# simpleAdmin.sh
# THis script must be called from the directory it recides in
#--------------------------------------------------------------------------
# This script creates a directory using argument 1as a name, a subdirectory
# of the first directory using argument 2 as a name, a a file with the
# text 'Hello World' in the subdirectory, and finally a soft link gets
# created in the current directory linking to the sub directory
#--------------------------------------------------------------------------
# Arguments: directory name, subdirectory name, file name, link name
# Invocation: ./simpleAdmini.sh dir1 dir2 message.txt linkName
#--------------------------------------------------------------------------

dir1=$1
dir2=$2
msg=$3
link=$4

#1. Creates a directory in the current working directory using the first argument as the name.
sudo mkdir ./$dir1
sudo chmod a+w ./$dir1

#2. Creates a directory inside the directory created in item 1 using the second argument as the name.
sudo mkdir ./$dir1/$dir2
sudo chmod a+w ./$dir1/$dir2

#3. Using redirection, creates a text file using the third argument as the name, writes “Hello World!” to it, and saves it in the directory created in item 2.
echo "Hello World" > ./$dir1/$dir2/$msg

#4. Creates a link from the working directory to the sub-directory created in item 2 and uses the fourth argument as name of the link.
sudo ln -s ./$dir1/$dir2/ $link

#5. Displays messages to the user indicating what actions are being taken. See example below.
echo "Created directory " ~/cpe522/$dir1
echo "Created subdirectory " ~/cpe522/$dir1/$dir2
echo "Created file " $msg " and saving it in " ~/cpe522/$dir1/$dir2
echo "Created link to " ~/cpe522/$dir1/$dir2 " named " $link


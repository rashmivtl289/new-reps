#3a. Create a script file called file properties that reads a filename entered and outputs it
#properties
if [ $# -eq 1 ]
then
if [ -e $1 ]
then
set -- `ls -ld $1`
echo permissions are:$1
echo file linkcount:$2
echo file user:$3
echo file group:$4
echo file size:$5
echo file created at:$6 $7 $8
echo file name:$9
else
echo file does not exist
fi
else
echo enter filename
fi

#2a. Write a shell script that accepts two filenames as arguments, checks if the permissions for
#these files are identical and if the permissions are identical, output common permissions
#otherwise output each filename followed by its permissions
f1=$1
f2=$2
if [ -e $f1 ]
then
set -- `ls -ld $f1`
f1p=$1
else
echo file does not exist
exit
fi
if [ -e $f2 ]
then
set -- `ls -ld $f2`
f2p=$1
else
echo file does not exist
exit
fi
if [ $f1p = $f2p ]
then
echo File permissions are identical
echo file permission is $f1p
else
echo file permission are not identical
echo $f1 permission is $f1p
echo $f2 permission is $f2p
fi

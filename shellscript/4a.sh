#4a. Write a shell script that accept one or more file names as argument and convert all of them
#to uppercase, provided they exists in current directory.
for i in $*
do if [ -f $i ]
then
echo ------$i contentys are------
cat $i | tr "[a-z]" "[A-Z]"
echo ---------------------------
 else
 echo $1 does not exist
 fi
 done
 

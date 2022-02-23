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
 

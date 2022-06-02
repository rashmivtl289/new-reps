#6b. Write a shell script to list all the files in a directory whose filename is at least 10 characters.
#(use expr command to check the length).


if [ $# -eq 1 ] 
then
	chd=$1
else
	chd=.
fi
if [ -d $chd ]
then
	cd $chd
else
	echo no such direcotry
        exit 0
fi        	
for i in `ls`
	do
	fl=`expr length $i`
	if [ $fl -ge 10 ]
	then
		echo $i
	else
		echo filename $i is not greater than 10 character
	fi
done



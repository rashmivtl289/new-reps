#5a. Write a shell script that accepts filename as argument and display its creation time if file
#exist and if does not send output error message.
if [ $# -eq 1 ]
	then
	file=$1
	if [ -f $file ]
	then
		set -- `ls -ld $file`
		echo "$file created at $6 $7 $8"
	else
		echo "file does not exist"
	fi	
else
echo enter filename
fi

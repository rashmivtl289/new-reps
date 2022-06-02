#7b. Write a shell script that accepts a list of filenames as its argument, count and report
#occurrence of each word that is present in the first argument file on other argument files.
if [ $# -ne 0 ]
then
	if [ $# -ge 2 ]
	then
		if [ -f $1 ]
		then
			for fn in $*
			do
				if [ $fn = $1 ]
				then
					continue
				fi
				if [ -f $fn ]
				then
					for w in `cat $1`
					do
						l=`grep -iow "$w" $fn | wc -l` 2>er 
						echo $w is $l times in $fn
					done
				else
					echo $fn does not exist
				fi
			done		
		else
			echo pattern file does not exist
	        fi
	else
		echo Enter files to match 
	fi	
else
	echo Enter pattern file and files to be match 
fi


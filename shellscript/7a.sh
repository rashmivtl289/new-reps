# 7a. Write a shell script that gets executed and displays the message either “Good Morning” or
#“Good Afternoon” or “Good Evening” depending upon time at which the user logs in
 set -- `who`
 u=$1
 t=$4
 set -- `echo $t | tr ":" " "`
 h=$1
 if [ $h -ge 4 ] && [ $h -lt 12 ]
 then
 echo "Good morning($t) Mr/Mrs. $u"
 elif [ $h -ge 12 ] && [ $h -lt 16 ] 
 then
 echo "Good afternoon($t) Mr/Mrs. $u"
 elif [ $h -ge 16 ] && [ $h -lt 19 ]
 then
 echo "Good evening($t) Mr/Mrs. $u"
 else
 echo "Good night($t)Mr/Mrs. $u $"
 fi

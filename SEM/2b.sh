#2b. Write a shell script which accepts valid log-in names as arguments and prints their corresponding home directories, if no arguments #are specified, print a suitable error message.

if [ $# -ne 0 ]
then
for i in $*
do
grep $i /etc/passwd >ud
if [ $? -eq 0 ]
then
echo "user exist"
h=`cut -d ":" -f 6 ud`
echo "home directory of $i and $h"
else
echo "user not exist"
fi
done
else
echo "enter user name"
fi

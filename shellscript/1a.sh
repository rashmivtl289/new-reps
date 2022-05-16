if [ $# -eq 1 ]
then
if [ -d $1 ]
then
set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n | tail -n 1`
echo "file size: $1"
echo " name fil $2"
else
echo "not a dir"
fi
else
echo " entr dir"
fi


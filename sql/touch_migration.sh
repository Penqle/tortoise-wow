DATE=`date +%Y%m%d%H%M%S`
FPATH=database_updates/"$DATE"_world.sql

touch "$FPATH"

if [ -e "$FPATH" ]; then
	echo "File created"
else
	echo "FAILED to create file"
fi

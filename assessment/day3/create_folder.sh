#5 Check if a folder exist or not, if not create

path="assess"
if [ -d "$path" ]; then
	echo "folder already exist"
else
	mkdir $path
fi

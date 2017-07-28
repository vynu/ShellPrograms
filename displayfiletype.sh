if [ "sub" = "$3" -o "sub folder" = "$3" -o "subfolder" = "$3" ]
then
	 depth="-maxdepth 1"
else
	depth=""
fi
for dir in $1; do
  result="$(find "$dir" $depth -type f -name "*.$2"|wc -l)"
echo "Folder '${dir}' contains ${result} $2 files."
done

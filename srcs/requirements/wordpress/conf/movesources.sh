workidr="/var/www/html"
files=$(ls /var/www/html/ | wc -l)

if [ $files -eq 0 ]; then
	mv /wordpress/* $workidr/
fi

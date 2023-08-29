workidr="/var/www/html"

if [ -z "$(ls -A $directory)" ]; then
	echo "Volume is empty... downloading wordpress"
	wget https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/html
fi

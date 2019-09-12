#!/bin/sh




if [ -z "$(ls -A /var/www/html/sites)" ]; then
   echo "Copying initial files"
   cp -R /var/www/html/sites-backup/sites /var/www/html/
   cp /var/www/html/sites-backup/.htaccess /var/www/html/sites/default/files
else 
   echo "Not Empty"
fi

apache2-foreground

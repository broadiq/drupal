#!/bin/sh

if [ -z "$(ls -A /var/www/html/sites)" ]; then
   echo "Copying initial files"
   cp -R /var/www/html/sites-backup /var/www/html/sites
else 
   echo "Not Empty"
fi

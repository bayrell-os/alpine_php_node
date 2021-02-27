sed -i 's|%REWRITE_PHP%|rewrite ^/. /index.html last;|g' /etc/nginx/sites-available/99-app.conf
sed -i 's|%LOCATION_PHP%|location /index.html|g' /etc/nginx/sites-available/99-app.conf

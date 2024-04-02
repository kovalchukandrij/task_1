#!/bin/bash

echo "<h1>Andrij Kovalchuk site</h1>" > index.html

if command -v docker >/dev/null; 
then
    docker run -p 8080:80 -d --name my_nginx nginx
    docker cp index.html my_nginx:/usr/share/nginx/html/index.html
    
else
    echo "Docker is not installed"
    exit 1
fi

#!/bin/bash

if hash dos2unix 2>/dev/null; then
    echo "Start convert file to LF ..."
    dos2unix "config.txt"
    dos2unix "docker-compose.yml"
    dos2unix ".docker/nginx.conf"
    echo "Done!\n"
else
    echo 'Please install dos2unix'
    exit 1
fi

if hash perl 2>/dev/null; then
    sleep .5
else
    echo 'Please install perl'
    exit 1
fi

. "$PWD/config.txt"

edit_content() {
  perl -pi -e "s/$1/$2/g" $3
}

echo 'Create docker-compose.yml ...'
sleep .5

dco_path="docker-compose.yml"
nginx_conf_path=".docker/nginx.conf"

if [ -f "$dco_path" ]; then
  rm "$dco_path"
fi

if [ -f "$nginx_conf_path" ]; then
  rm "$nginx_conf_path"
fi

cp "$dco_path".tmp "$dco_path"
cp "$nginx_conf_path".tmp "$nginx_conf_path"

echo "Done!\n"

echo 'Replace data ...'
sleep .75
echo "Done!\n"

# replace docker-compose.yml
edit_content "SERVICE_NGINX_NAME" "$SERVICE_NGINX_NAME" $dco_path
edit_content "SERVICE_APP_NAME" $SERVICE_APP_NAME $dco_path
edit_content "SERVICE_DATABASE_NAME" $SERVICE_DATABASE_NAME $dco_path
edit_content "SERVICE_PHPMYADMIN_NAME" $SERVICE_PHPMYADMIN_NAME $dco_path
edit_content "SERVICE_DATABASE_DATA_NAME" $SERVICE_DATABASE_DATA_NAME $dco_path
edit_content "SERVICE_NGINX_PORT" $SERVICE_NGINX_PORT $dco_path
edit_content "SERVICE_PHPMYADMIN_PORT" $SERVICE_PHPMYADMIN_PORT $dco_path
edit_content "NETWORK_NAME" $NETWORK_NAME $dco_path
edit_content "DATABASE_ROOT_PASSWORD" $DATABASE_ROOT_PASSWORD $dco_path
edit_content "DATABASE_USERNAME" $DATABASE_USERNAME $dco_path
edit_content "DATABASE_PASSWORD" $DATABASE_PASSWORD $dco_path
edit_content "DATABASE_DBNAME" $DATABASE_DBNAME $dco_path

# replace nginx.conf
edit_content "NGINX_DOMAIN" $NGINX_DOMAIN $nginx_conf_path
edit_content "NGINX_MAX_BODY_SIZE" $NGINX_MAX_BODY_SIZE $nginx_conf_path
edit_content "SERVICE_APP_NAME" $SERVICE_APP_NAME $nginx_conf_path

#docker-compose up --build -d
#docker-compose exec ak_admin_app sh -c "composer create-project laravel/laravel apps"
#mv ./apps/* .
#mv ./apps/.* .
#rm -r apps

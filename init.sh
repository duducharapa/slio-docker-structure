#Init auth service
if [ -e auth/manage.py ]
  then
    docker start auth_service auth_db
  else
    sudo docker-compose run auth django-admin startproject services . && sudo chown -R $USER:$USER auth
fi

# Init products service
if [ -e products/manage.py ]
  then
    docker start products_service products_db
  else
    sudo docker-compose run products django-admin startproject services . && sudo chown -R $USER:$USER products
fi
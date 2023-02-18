#/bin/sh

sudo chown -R "${USER_ID}" html/
sudo chown -R "${USER_ID}" config/

docker-compose up &
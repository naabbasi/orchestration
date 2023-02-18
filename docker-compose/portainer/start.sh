#/bin/sh

sudo chown -R "${USER_ID}" portainer_data/

docker-compose up &
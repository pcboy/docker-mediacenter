docker-compose.yml:
	UID=`id -u` GID=`id -g` envsubst < docker-compose.sample.yml > docker-compose.yml

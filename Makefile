DOCKER_CMD = "docker-compose -f docker-compose.yml"
# ENVIRONMENT_CMD

docker-start:
	@eval "${DOCKER_CMD} up -d"

docker-db-migrate:
	@eval "${DOCKER_CMD} exec web python manage.py migrate"



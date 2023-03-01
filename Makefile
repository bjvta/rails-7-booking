

runserver:
	docker-compose up

test:
	docker compose run --rm web bin/rspec

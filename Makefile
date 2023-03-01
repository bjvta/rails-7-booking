

runserver:
	docker-compose up

test:
	docker compose run --rm web bin/rspec


rubocop:
	docker compose run --rm web bundle exec rubocop --parallel
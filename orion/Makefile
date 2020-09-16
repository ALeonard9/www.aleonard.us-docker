build:
	docker build --target dev -t aleonard9/orion-web:dev .

produce:
	docker build --target prod -t aleonard9/orion-web:prod .

run: build
	docker run --privileged -it -p 80:80 --name phoenix_web --env-file dev.env --rm aleonard9/orion-web:dev

kill:
	docker kill phoenix_web
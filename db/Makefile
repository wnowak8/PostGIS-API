up:
	docker build -t postgis-image .
	docker run --name postgis-db -d -p 5432:5432 postgis-image

down:
	docker stop postgis-db
	docker rm postgis-db
	docker rmi postgis-image

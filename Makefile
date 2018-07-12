build:
	docker build -t magic-wormhole .
push: build
	docker run --rm -it magic-wormhole 
	docker tag magic-wormhole farrellit/magic-wormhole
	docker push farrellit/magic-wormhole


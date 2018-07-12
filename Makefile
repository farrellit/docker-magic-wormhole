build:
	docker build -t magic-wormhole .
push: build # this is probably going to be done automatically on a push in the future
	docker run --rm -it magic-wormhole 
	docker tag magic-wormhole farrellit/magic-wormhole
	docker push farrellit/magic-wormhole


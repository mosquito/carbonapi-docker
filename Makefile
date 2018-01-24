all: build

build: carbonapi
	docker build -t mosquito/carbonapi .	

carbonapi: build-image
	docker run -t --rm -v $(shell pwd):/go/bin carbonapi-builder:latest \
		/usr/local/go/bin/go get github.com/go-graphite/carbonapi

build-image:
	docker build -t carbonapi-builder:latest -f Dockerfile.build .

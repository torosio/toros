.PHONE: clean build image

REGISTRY=torosio/toros

### BUILDING
clean:
	rm -f dist/toros

build: dist/toros

dist/toros: $(shell find . -type f -name '*.go')
	go build -o dist/toros

image: dist/toros
	docker build -f Dockerfile -t $(REGISTRY) .
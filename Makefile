DOCKERFILE	= Dockerfile
PORT				= 8080
TAG					= review-container

build:
	docker build -t $(TAG) .

run:
	docker run -itd --name $(TAG) --env "REVIEW_CONFIG_FILE=hogehoge" --rm $(TAG)

contener=`docker ps -a -q`
image=`docker images | awk '/^<none>/ { print $$3 }'`

clean:
	@if [ "$(image)" != "" ] ; then \
    docker rmi $(image); \
  fi
	@if [ "$(contener)" != "" ] ; then \
    docker rm -f $(contener); \
  fi

CURL = curl

all:

deps:

updatenightly:
	$(CURL) -sSLf https://raw.githubusercontent.com/wakaba/ciconfig/master/ciconfig | RUN_GIT=1 REMOVE_UNUSED=1 perl

test-image-server:
	docker run -i $(DOCKER_IMAGE) bash -c 'which drone-server'

empty:

## License: Public Domain.

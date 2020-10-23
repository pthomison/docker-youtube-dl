image_name = index.docker.io/pthomison/youtube-dl
image_tag = latest

build:
	docker build . -t $(image_name):$(image_tag)

shell: build
	docker run -it --rm $(image_name):$(image_tag) /bin/bash

push: build
	docker push $(image_name):$(image_tag)
image-version=0.1


image: base-image pipenv-lock
	docker build -t akiyamam/slack_downloader:$(image-version) -f main.dockerfile .

base-image:
	docker build -t akiyamam/slack_downloader-base:$(image-version) -f base.dockerfile .

pipenv-lock:
	docker run --rm -v $(PWD):/usr/local/src akiyamam/slack_downloader-base:$(image-version) pipenv lock

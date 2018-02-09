image-version=0.1

base-image:
	docker build -t akiyamam/slack_downloader-base:$(image-version) -f base.dockerfile .

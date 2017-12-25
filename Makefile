.DEFAULT_GOAL := build


build:
	docker build -t nouchka/orbit .

run:
	docker run nouchka/orbit

check:
	hadolint

test: build run check
	docker run nouchka/orbit version

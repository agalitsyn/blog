BUILD_DIR := docs

.PHONY: build
build:
	hugo --destination $(BUILD_DIR)

.PHONY: dev
dev:
	hugo server -w --buildDrafts

.PHONY: start
preview:
	python3 -m http.server 8080 --bind localhost --directory $(BUILD_DIR)

.PHONY: update-theme
update-theme:
	git submodule update --remote --rebase

.PHONY: post
post:
	hugo new blog/new-post.md

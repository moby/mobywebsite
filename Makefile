# Serve the website at http://localhost:4000
.PHONY: serve
serve:
	docker compose up --build

# Build website and output to _site folder
.PHONY: release
release:
	rm -rf _site
	docker buildx bake release

# Vendor Gemfile.lock
.PHONY: vendor
vendor:
	docker buildx bake vendor

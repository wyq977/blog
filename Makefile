# The directory where the generated site will be placed.
DESTDIR=public

# Default target: build the site.
.PHONY: all
all: serve

# Clean the destination directory.
.PHONY: clean
clean:
	@echo "🧹 Cleaning old build..."
	@rm -rf $(DESTDIR)/*

# Build the site using Hugo.
.PHONY: build
build:
	@echo "🚀 Building site..."
	@hugo --gc --minify -d $(DESTDIR)

# Serve the site locally for testing.
.PHONY: serve
serve:
	@echo "🔥 Starting local server..."
	@hugo server -D
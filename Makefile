SHELL := /bin/bash
PATH  := node_modules/.bin:$(PATH)

GENERATED_FILES = \
	catalyst.css \
	catalyst-no-reset.css \
	catalyst-grid.css \
	catalyst-spaces.css

.PHONY: build watch dist deploy clean install

all: build

install: node_modules bower.json

build: clean install $(GENERATED_FILES)

watch: install
	@watchman src "make --always-make build"

dist: build
	@mkdir -p dist
	@bin/dist index.html $(GENERATED_FILES)
	@cp node_modules/catalog/dist/catalog.js dist/catalog.js
	@rm -rf dist/docs
	@cp -R docs/ dist/docs/
	@sed -i '' 's/node_modules\/catalog\/dist\///g' dist/index.html
	@git add .
	@V=`bin/version`; git commit -m "$(subst VERSION,$$V,DIST VERSION)"
	@git subtree push --prefix dist origin gh-pages
	@V=`bin/version`; git tag $$V

deploy: dist
	@echo "TODO"

clean:
	@rm -rf -- $(GENERATED_FILES)

node_modules: package.json
	@npm install
	@touch $@

bower.json: package.json
	@rm -f $@
	@bin/bower > $@
	@chmod a-w $@

%.css: src/%.scss
	@node-sass --output-style expanded $< $@

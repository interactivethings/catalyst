SHELL := /bin/bash
PATH  := ./bin:node_modules/.bin:$(PATH)

GENERATED_FILES = \
	catalyst.css \
	catalyst-scaffold.css

.PHONY: build watch dist deploy clean install

all: build

install: node_modules

build: clean install $(GENERATED_FILES)

watch: install
	@watchman src "make --always-make build"

dist: build
	@mkdir -p dist
	@dist index.html $(GENERATED_FILES)
	@git add .
	@V=`version`; git commit -m "$(subst VERSION,$$V,DIST VERSION)"
	@git subtree push --prefix dist origin gh-pages
	@V=`version`; git tag $$V

deploy: dist
	@echo "TODO"

clean:
	@rm -rf -- $(GENERATED_FILES)

node_modules: package.json
	@npm install
	@touch $@

%.css: src/%.scss
	@node-sass --output-style expanded $< $@

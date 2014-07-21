# Catalyst

Catalyst is a small and solid foundation for CSS projects. It provides just the tools you need to get a project off the ground: a layout system and a handful of HTML helpers. To get started quickly, pre-built CSS packages are available.

Refer to the [documentation](http://interactivethings.github.io/catalyst/) to find out more.

## Development

The only hard dependency is a recent [Node.js](http://nodejs.org/) version (we develop with Node 0.10.x). We use the [Homebrew](http://brew.sh/) package manager to install Node on Mac&nbsp;OS&nbsp;X:

    brew install node

After that, just run `make` in the project root to install all dependencies and build the project.

During development, run `make watch` to automatically rebuild the project when you make changes to the source files.

### Publishing new versions

We use semantic versioning (http://semver.org/) to create Catalyst packages. When you add new features or bugfixes, you should update the version information in `package.json` and create a new distribution:

    make dist

This will make sure that you don't overwrite an existing version because people can link to published distributions directly, so we don't want to change existing packages. If this check succeeds, the new distribution is published to Github.

### Contributing

Contributions are welcome. If you discover bugs or add features, please create a test-case in `/test` to make sure your fix works.

Be aware that generated CSS can quickly become very verbose, so make sure to optimize as much as makes sense without requiring code that's too complex.

## Credit

This project is built on ideas and code from:

* [Scaffy](http://scaffy.railsware.com/)
* [Foundation](http://foundation.zurb.com/)

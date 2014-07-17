# Catalyst

Catalyst is a thing.

## Installation

To get started, just run the following at the project root:

    make

This will install all dependencies and build the project.

## Development

For development, a `watch` task is available to automatically rebuild the project on changes:

    make watch

## Distribution

When you created a solid new version, you should create a new distribution

    make dist

You should then commit the new dist to Git and create a new semantic versioning tag (http://semver.org/)

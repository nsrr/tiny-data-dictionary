# Tiny Data Dictionary

[![Build Status](https://travis-ci.org/sleepepi/tiny-data-dictionary.png?branch=master)](https://travis-ci.org/sleepepi/tiny-data-dictionary)


An example Data Dictionary in JSON format.

### How to Create CSV Data Dictionary

Prerequisites: [Ruby Installed](https://github.com/remomueller/documentation), using RVM on *nix type machines, and RubyInstaller on Windows machines

- Install dependencies using bundler:

`bundle install`

- Generate the CSV from the repository:

`spout export`

The Data Dictionary will be created in the `dd` folder in a versioned subfolder. EX: `dd/1.0.0/[variables|domains].csv`

### Testing

- Use bundler to download required gems:

`bundle install`

- Run tests using:

`spout test`

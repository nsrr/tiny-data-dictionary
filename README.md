# Tiny Data Dictionary

[![Build Status](https://travis-ci.org/sleepepi/tiny-data-dictionary.png?branch=master)](https://travis-ci.org/sleepepi/tiny-data-dictionary)


An example Data Dictionary in JSON format.

### How to Create CSV Data Dictionary

Prerequisites: [Ruby Installed](https://github.com/remomueller/documentation), using RVM on *nix type machines, and RubyInstaller on Windows machines

1. Install dependencies using bundler:

`bundle install`

2. Generate the CSV from the repository:

`bundle exec rake dd:create`

The Data Dictionary will be created in the `dd` folder in a versioned subfolder. EX: `dd/0.1.0/[variables|domains].csv`

### Testing

1. Use bundler to download required gems:

`bundle install`

2. Run tests using:

`bundle exec rake`

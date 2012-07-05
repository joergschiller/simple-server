# Simple Server

Simple static web server for local development using rack and thin.

## Installation

Add this line to your application's Gemfile:

    gem "simple-server", :git => "https://github.com/joergschiller/simple-server.git"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-server

## Usage

    $ bundle exec simple-server

or

    $ bundle exec simple-server --port 1245

for use with Capybara

    require "simple/server"
    Capybara.app = Simple::Server.app File.join(File.dirname(__FILE__), "..", "public")

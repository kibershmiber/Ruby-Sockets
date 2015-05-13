[![Code Climate](https://codeclimate.com/github/poremchuk/RubySockets/badges/gpa.svg)](https://codeclimate.com/github/poremchuk/RubySockets)
[![Test Coverage](https://codeclimate.com/github/poremchuk/RubySockets/badges/coverage.svg)](https://codeclimate.com/github/poremchuk/RubySockets/coverage)

A simple Ruby socket client and server.

Usage:
1. Run server.rb (feel free to change port)
2. Run client.rb. It return datetime as result (dont forget change port similar to port in server.rb)

If you want to use RSPEC tests:
 1. Create new gemset (if necessary): rvm gemset create <GEMSET_TITLE>
 2. Bundle rspec with depending. Just run in project root: bundle install
 3. Than run  rspec spec/test  or bundle exec rspec spec/test
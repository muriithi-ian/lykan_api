# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
  * change [postgres security to trust: ](https://stackoverflow.com/questions/12720967/how-can-i-change-a-postgresql-user-password)
  * on linux: `sudo adduser lykan`
  * run `sudo -u postgres createuser lykan -s`
  * run `sudo -u postgres psql`
  * run `\password lykan` and enter password [1234] 
  * Run `rake db:create` to create the database
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

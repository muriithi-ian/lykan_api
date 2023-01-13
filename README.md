# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
  * install postgres locally
  * find the `pg_hba.conf` in the postgres installation: likely path is `/etc/postgresql/[version]/main/pg_hba.conf` replace version with postgres version installed
    * (reference for previous step) change [postgres security to trust: ](https://stackoverflow.com/questions/12720967/how-can-i-change-a-postgresql-user-password)
  * change `local     all         all             peer # change this to md5` to `local     all         all             md5 # like this`
  * restart postgres service with `sudo service postgresql restart`
  * add user/role `sudo adduser lykan`
  * run `sudo -u postgres createuser lykan -s`
  * run `sudo -u postgres psql`
    * run `\password lykan` and enter password [1234] 
    * exit postgres terminal with `\q`
  * restart postgres service with `sudo service postgresql restart`
  * Run `rails db:create` to create the database
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

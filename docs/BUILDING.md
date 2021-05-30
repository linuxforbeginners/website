# Building Lfb
## Prerequisites
You will need the ruby version `2.7`, others are not tested and may not work.
Install ruby using the following command:
```shell
$ sudo apt-get install -y ruby
```
You also need the `ruby-dev` package:
```shell
$ sudo apt-get install -y ruby-dev
```
For the database, use `sqlite3`. The libary `libsqlite3-dev` is required too:
```shell
$ sudo apt-get install -y sqlite3 libsqlite3-dev
```
Now, install the following gems:
```shell
$ sudo gem install bundler
$ sudo gem install rails
```
Install NodeJS and yarn too:
```shell
$ curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
$ sudo apt-get install -y nodejs
$ sudo npm install --global yarn
```
## Cloning
Clone this repository using
```shell
$ git clone https://github.com/linuxforbeginners/website.git
```
## Installing the dependencies
Run the bundler using
```shell
$ bundle install
```
When the bundler has finished, install the npm dependencies using yarn:
```shell
$ yarn
```
## Finished!
You have successfully built Linux for beginners, read [`Server.md`](Server.md) to get to know the server!
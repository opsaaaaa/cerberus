Development TLDR
================

Install the following:

- rvm
- yarn
- nvm
- npm
- rails
- postgres

Create a postgres user
```
$ sudo su - postgres
$ psql -U postgres
# CREATE ROLE mysuperuser2 WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'mysuperpass2';
```

Installers
```
$ bundle install
$ yarn install
$ npm install
```

Init the development database
```
$ rake db:create
$ rake db:migrate
$ rake db:seed 
```

Start server
```
$ rails server

$ ./bin/webpack-dev-server
```
[local server](localhost:3000)

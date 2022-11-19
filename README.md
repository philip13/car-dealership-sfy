# The Car Dealership App

This is a small Ruby on Rails application that can do basic inventory management for a car dealership manager with two roles (user, admin) 

## Project Specifications

### Envirionment
  - Ruby version '2.7.6'
  - Bundle version recomend '2.1.4'
  - postgres (PostgreSQL) 14.5
  - Default Port: 3000



## Getting Started
Open a new terminal and type:

`$ git clone git@github.com:philip13/car-dealership-sfy.git`

Go to the downloaded folder and install:

```
$ cd car-dealership-sfy
$ bundle install
```

Database:

```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

### Run local server
`$ rails s` 

Open a browser and go to:

http://localhost:3000/

If you are not login the server redirect to http://localhost:3000/users/sign_in

### Credential roles 
You can use as user role login:

```
email: fili.cueavas+user@gmail.com
password: 123456
```
As admin user
```
email: fili.cueavas+admin@gmail.com
password: 123456
```

> You can create your own credentials modified the `db/seed.rb` file before run `rails db:seed`

## Run tests
```
$ rspec spec/
```

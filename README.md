# Used Car Sales Inventory


It is a web application that allows you to have two types of user: 'admin' and 'user'. Users could see the complete cars inventory and administrators will be able to add, edit and delete new cars.

## Built With

- Ruby v2.5.8
- Ruby on Rails v5.2.5


## Getting Started

To get a local copy up and running follow these simple example steps.

You can get a local copy of the repository please run the following commands on your terminal:

$ cd <folder>

$ git clone git@github.com:emiliocm9/micro-reddit.git

### Prerequisites

Ruby: 2.5.8
Rails: 5.2.5
Postgres: >=9.5

### Setup

> Remember that you need install all the gems before trying to run the program. It's very important to follow the next instructions.

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
   rails data:migrate
```

### Usage
The data migrations will create new records in DDBB for users and dealerships table.

    User.create(name: 'userAdmin1', role: 'admin')
    User.create(name: 'userAdmin2', role: 'admin')
    User.create(name: 'user1', role: 'user')
    User.create(name: 'user2', role: 'user')

It's important to know this information to validate the login process.

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

## Authors

👤 **Emilio Contreras**

- Github: [@emiliocm9](https://github.com/emiliocm9)
- Twitter: [@emiliocm31](https://twitter.com/emiliocm31)
- Email: [email](emilio.contreras97@gmail.com)
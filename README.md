# Used Car Sales Inventory


It is a web application that allows you to have two types of user: 'admin' and 'user'. Users could see the complete cars inventory and administrators will be able to add, edit and delete new cars.

## Built With

- Ruby v2.5.8
- Ruby on Rails v5.2.5


## Getting Started

To get a local copy up and running follow these simple example steps.

-[x] 1.- Click on the install or download button under the repository name and copy the URL by clicking on the icon.
![Clone](./app/assets/images/first_instruction.png)

-[x] 2.- Open your terminal. To open the terminal, press Ctrl+Alt+T(Ubuntu) or if you are using Mac Command + Space and type in 'Terminal'.
![Terminal](./app/assets/images/terminal_open.png)

-[x] 3.- Navigate to the location in your computer where you want the repo to be cloned. Remeber that you have to type 'cd' first.
![Cd](./app/assets/images/cdirectorie.png)

-[x] 4.- Type git clone and paste the url you copied on step one.

![Clone](./app/assets/images/git_clone_better.png)

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
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
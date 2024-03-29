# PlantDwellers 2.0

PlantDwellers 2.0 is a Single Page Application that allows housemates to share in the care of their houseplants and update a calendar with watering tasks.

This repo is the Rails API back end for the PlantDwellers 2.0 App.

The front end can be found at [plantdwellers-2.0-frontend](https://github.com/deliaconstantino/plantdwellers-2.0-frontend/blob/main/README.md) with instructions for running it. Note that the back end will need to be running through Rails server in order to populate information from the database while viewing the front end.

Ruby version: '2.7.1'

Rails version: '~> 6.1.3', '>= 6.1.3.2'

# Configuration and Database
To get started with PlantDwellers 2.0, fork and clone this app.

Run `bundle install`

This app uses JWT (JSON Web Token) and [Figaro](https://github.com/laserlemon/figaro#getting-started) for user authentication. To install Figaro, run `bundle exec figaro install`. This command creates a commented version of the `config/application.yml` file and adds it to your `.gitignore`. 

Configure the `config/application.yml` file to hold your secret:
```
# config/application.yml
JWT_SECRET: "create_your_own_secret_here"
```

The secret should be a random string that is not shared with git, Github, or any third parties. A good option is to use [Ruby `SecureRandom`](https://ruby-doc.org/stdlib-2.5.1/libdoc/securerandom/rdoc/SecureRandom.html) to generate a random string. (The secret is accessed via the line `ENV["JWT_SECRET"]` when needed throughout the app.)

Run `rails db:migrate` to run database migrations.

Run `rails db:seed` to seed the database.

Load the Rails API server on port 3001 with `rails s -p 3001` and your backend should be all set.

Make sure to keep Rails server running while the app is in use, and check out the front end repo for front end information.

# License
The app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/deliaconstantino/plantdwellers-2.0-backend.

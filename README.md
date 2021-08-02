# PlantDwellers 2.0

PlantDwellers 2.0 is a Single Page Application that allows housemates to share in the care of their houseplants and update a calendar with watering tasks.

This repo is the Rails API back end for the PlantDwellers 2.0 App.

The front end of the app can be found at [plantdwellers-2.0-frontend](https://github.com/deliaconstantino/plantdwellers-2.0-frontend/blob/main/README.md) with instructions for running the front end. Note that the back end will need to be running through Rails server in order to populate information from the database while viewing the front end.

Ruby version: '2.7.1'

Rails version: '~> 6.1.3', '>= 6.1.3.2'

# Configuration and Database
To get started with PlantDwellers 2.0, fork and clone this app.

Run `rails db:migrate` to run database migrations.

Run `rails db:seed` to seed the database.

Load the Rails API server on port 3001 with `rails s -p 3001` and your backend should be all set.

Make sure to keep Rails server running while the app is in use, and check out the front end repo for front end information.

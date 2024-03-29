# Todo

## 1
[] create migrations:
   [x] Home
   [x] User
   [x] Plant
   [] Category - later
[x] add relationships
[x] add minimal seed data
[x] test

## 2
[x] implement serializers to load data to front end
[x] add redux store
[x] create login/logout
[] create sign-up
[] rework organization - use feature folder and slice on frontend
[x] change log in to be held in react component state, not redux store

## 3
[] change frontend fetch to use restful routing - only load current user on login fetch.
[x] load home info with a new fetch (to homes resource) on Profile load
[x] load plant info with a new fetch (to plants resource) on Plants load

## 4 Watering rate backend
[x] events table for watering events
 - an event belongs to a plant
 - a plant has many watering events
 Event Attributes:
 - plant id
 - date
 - month?
 - complete (boolean)

 ## 5 Add rate to backend:
 [x] a plant has many date events, a date event belongs to a plant
 [x] a date events can be repeated
 [x] a date events belongs to a user through plants
 [x] a user has many date events through plants
 [x] add watering rate repeat every _ days to plants table
 [] in controller, will have a monthly recurring action to update the plant_events
 [x] based on dates, render content in calendar, on pop-up click show full details
 [x] allow user to input 1 - 28 for watering_rate

 ## 6 Monthly plant_events table
 [x] table of dates for the month, updates per month
 [x] each row has a plant_id, date, completed (default false)


## 7 Render Home with Calendar
[x] update home page on frontend to fetch all home data: home info, users of home,
[x] load plant events for home from top parent calendar container
[] add validations that a user can only see their home, not any home
[] add to user sign up to route to a page to join or create a home

## 8 Home Page/Calendar
[x] render home info from home conponent
[s] update calendar pop-up; add checkbox to mark complete
[x] implement post to backend to update completion status of watering event
[x] update chekcbox to render as checked when completed = true

## 9
[x] add delete plant option for user's own plants as button from plant card
[x] update plant card to render a leaf photo

#10
[] fix spacing/styling on Home page
[x] fix routes/router
[x] update logout to be just a click not a page change
[x] add option for user to create/join a home after they sign up - put on profile page, otherwise show home name
[] if no home, Home page should say, you haven't added a home to your profile. Click here to add and link to above page
[x] implement join home form
[x] implement create home form
[x] fix login to route to profile, not logout
[] check paths and what loads with a brand new user
[] fix styling on logout button
[] make home nickname required or maybe all fields required?
[x] update home check in profile
[] re-format state for home
[] error handling, esp for createHomeForm
[] add status codes
[x] add email must be unique for user, all fields required to create account


# Extras
[] implement responsive design

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
[] create login/logout
[] create sign-up
[] rework organization - use feature folder and slice on frontend
[x] change log in to be held in react component state, not redux store

## 3
[] change frontend fetch to use restful routing - only load current user on login fetch.
[] load home info with a new fetch (to homes resource) on Profile load
[x] load plant info with a new fetch (to plants resource) on Plants load

## 4 Watering rate backend
[] events table for watering events
 - an event belongs to a plant
 - a plant has many watering events
 Event Attributes:
 - plant id
 - date
 - month?
 - complete (boolean)

 ## 5 Add rate to backend:
 [] a plant has many dates, a date belongs to a plant
 [] a date can be repeated
 [] a date belongs to a user through plants
 [] a user has many dates through plants
 [] add watering rate repeat every _ days to plants table ?
 [] in controller, will have a monthly recurring action to update the plant_events
 [] based on dates, render content in calendar, on pop-up click show full details
 [] allow user to input 1 - 28 for watering_rate

 ## 6 Monthly plant_events table
 [] table of dates for the month, updates per month
 [] each row has a plant_id, date, completed (default false)


## 7 Render Home with Calendar
[] update home page on frontend to fetch all home data: home info, users of home, all plants of home, with plant_events
[] add validations that a user can only see their home, not any home
[] add to user sign up to route to a page to join or create a home

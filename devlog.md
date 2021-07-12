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
 [] based on dates, render content in calendar, on pop-up click show full details
 [] allow user to input 1 - 28 for watering_rate

 ## 6 Monthly plant_events table
 [x] table of dates for the month, updates per month
 [x] each row has a plant_id, date, completed (default false)


## 7 Render Home with Calendar
[x] update home page on frontend to fetch all home data: home info, users of home,
[x] load plant events for home from top parent calendar container
[] add validations that a user can only see their home, not any home
[] add to user sign up to route to a page to join or create a home

## 8 Home Page/Calendar
[] render home info from home conponent
[] update calendar pop-up; add checkbox to mark complete
[] implement post to backend to update completion status of watering event - possible to load all plants for a day in one form and on close of form, if any checked, send a post to backend to udpate at that point rather than on each check?

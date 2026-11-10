# Team Rater

A Ruby on Rails web app for rating teammates on group projects. Instructors (admins) set up courses, projects and teams; students sign in and rate the members of their team.

## Features

- Separate sign-up and login for students and admins (passwords hashed with `has_secure_password`)
- Admins create courses, projects and teams
- Students view their teams and submit ratings for teammates
- Database tables for courses, projects, teams, team lists, class lists and ratings

## Tech stack

- Ruby 2.6.6, Rails 6.1
- SQLite (development), Webpacker for JavaScript
- SCSS for styling

## Getting started

```bash
git clone https://github.com/davecverano/Team_Rater_Website.git
cd Team_Rater_Website/Team_Rater
bundle install
yarn install
bin/rails db:setup
bin/rails server
```

Then open http://localhost:3000.

## Running tests

```bash
cd Team_Rater
bin/rails test
```

## Project layout

```
Team_Rater/
  app/controllers/   students, admins, courses, projects, teams and login sessions
  app/models/        ActiveRecord models
  app/views/         ERB templates
  db/                schema and migrations
  config/routes.rb   routes
```

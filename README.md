# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example. It simulates an existing website built using Rails, allowing you to become familiar with the project by browsing through existing files, and then develop new features and test related functionality using both Rails and Cypress platforms.

[![made-with-Node](https://img.shields.io/badge/Made%20with-Node.js%20-success)](https://nodejs.org/en/)
[![made-with-Ruby](https://img.shields.io/badge/Made%20with-Ruby%20-red)](https://www.ruby-lang.org/en/)
[![made-with-Rails](https://img.shields.io/badge/Made%20with-Rails%20-red)](https://rubyonrails.org/)
[![made-with-PostgreSQL](https://img.shields.io/badge/Made%20with-PostgreSQL%20-blue)](https://www.postgresql.org/)
[![made-with-Bootstrap](https://img.shields.io/badge/Made%20with-Bootstrap%20-purple)](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
[![made-with-Stripe](https://img.shields.io/badge/Made%20with-Stripe%20-success)](https://stripe.com/docs/api)
[![made-with-Webpack](https://img.shields.io/badge/Made%20with-Webpack%20-success)](https://webpack.js.org/)
[![made-with-Cypress](https://img.shields.io/badge/Made%20with-Cypress%20-success)](https://www.cypress.io/)

## Table of Content
- [🌟 Features](#-features)
- [🚀 Getting Started](#-getting-started)
  - [Database](#database) 
  - [Stripe Testing](#stripe-testing)
  [🔨 Dependencies](#-Dependencies)

## 🌟 Features

## 🚀 Getting Started

### Set up

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

### Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

### Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## 🔨 Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

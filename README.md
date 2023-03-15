# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

The focus of the project was to learn how to use a new language and framework with minimal guidance, in order to simulate a real-world situations. 

Implemented the following features:

• **User Authentication:** User's login details are validated for uniqueness, and passwords are encrypted using BCrypt.
• **Sold Out Badge:** If item's quantity reaches 0, *'Add to Cart'* button will be replaced by *'Sold Out'* badge.
• **Admin Categories:** Admin must be authenticated before accessing the admin page. Admins can add or delete new product categories.
• **Enhanced Order Page:** Users are shown an order summary with product description, total price, and receipt email recipient.

## Stack
• Ruby
• Rails
• Rspec
• Cypress
• Bootstrap

## Setup

1. Fork and Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rails db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server
10. Happy shopping!

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Webpack 3.11


## Preview

# Jungle home page with sold out badge
!["Jungle home page with sold out badge"](https://github.com/cchand-vanc/jungle/blob/master/docs/products.png?raw=true)

# Admin > Products page
!["Admin > Products page"](https://github.com/cchand-vanc/jungle/blob/master/docs/admin.png?raw=true)

# My Cart
!["My Cart"](https://github.com/cchand-vanc/jungle/blob/master/docs/my_cart.png?raw=true)

# Order Summary
!["Order Summary"](https://github.com/cchand-vanc/jungle/blob/master/docs/order_confirmation.png?raw=true)

# My version of Instagramm made with Ruby on Rails
  This was a quick exercise to stretch out my Ruby muscles. This an Instagram clone that allows users to upload pictures and upvote or "like" other users pictures.


# Gems
  * [simple_form 3.5](https://github.com/plataformatec/simple_form) - for creating forms for pics
  * [devise 4.2](https://github.com/plataformatec/devise) - quick fix for creating, editing, deleting, confirming Users
  * [paperclip 4.3](https://github.com/thoughtbot/paperclip) -for image upload. Must have imageMagick installed too
  * [haml 5.0](http://haml.info/) - Alternative to erb
  * [bootstrap-sass 3.3](https://github.com/twbs/bootstrap-sass)
  * [masonry-rails 0.2.4](https://github.com/kristianmandrup/masonry-rails)
  * [acts_as_votable 0.10.0](https://github.com/ryanto/acts_as_votable) - for upvoting photos
  * [seed_dump](https://github.com/rroblak/seed_dump) - Creates db/seed file from current database

# Getting Started

 Make sure to install all of your gems by running:
 ```
 bundle install
 ```

 Then you need to migrate the database by running:

 ```
 rake db:migrate
 ```

 If you want to start from scratch, this is all you should need to get started. Since the database is empty, you will need to register a user to be able to add pics.

 OR, you can create some sample data by seeding the database. There is a seed file available at  db/seeds.rb.

 Seed your databse by running the following command in your terminal:

 ```
 rake db:seed
 ```

 This should insert one User and two Pics into your database. Restart your server by running
 ```
 ctrl + C
 rails server or rails s
 ```

 Your index page should now have two pictures there.

 [Index Page Screenshot](app/assets/images/ScreenShot.png)
# Models
  There are two models for this app - Users and Pics
  Pics cannot be created without having a User attached.Same with upvotes

# Devise Methods for Restricting Routes
  Devise allows for easy restriction of routes for users. The following line restricts users from seeing any of the other routes unless they are logged in:
  ```
  before_action :authenticate_user!, except: [:index, :show]
  ```

# Testing Welcome and Confirmation Emails

  If you want to test emails locally, you need to use some smtp faker. I used
  [Mailtrap](https://mailtrap.io/). s

  For devise User model, you must add
  ```
  :confirmable
  ```
  to the User model in models/user.rb. You can find more info on the :confirmable
  method here: [:confirmable](http://www.rubydoc.info/github/plataformatec/devise/master/Devise/Models/Confirmable)

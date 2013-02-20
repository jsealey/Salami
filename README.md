# Salami for Rails

Salami is a Ruby on Rails template created to serve as a starting point for quickly deploying a usable web application with the following features:

* [Devise](https://github.com/plataformatec/devise) for User/Admin accounts
* [Foundation](http://foundation.zurb.com) for cross-platform compatible styles
* Admin management interface with [kaminari](https://github.com/amatsuda/kaminari) for paginated searching of users and "login as user" functionality
* 100% Heroku compatible to provide a fast and easy development cycle

<a href="http://salami.herokuapp.com/" target="_blank">Sample deployed application</a>

## Getting Started

First, you must ensure that you have [Ruby on Rails installed](http://rubyonrails.org/download.)

then...

    $ git clone git@github.com:jsealey/Salami.git
    $ cd Salami
    $ bundle install
    $ rake assets:precompile
    $ rake db:migrate
    $ rails s

now your server should be running locally at [localhost:3000](http://localhost:3000).
*pat yourself on the back for getting this far*

# Deploy to Heroku

now lets take this a step farther and go through the steps to deploy your awesome new website to [Heroku](http://www.heroku.com) web hosting so everyone can see how awesome it is! 

First, you must [create a heroku account](https://api.heroku.com/signup).
Then you must install [Heroku toolbelt command line tool](https://toolbelt.herokuapp.com).

If you haven't already done so during Heroku command line tool setup, be sure to run the following command and enter your login credentials for Heorku.

    $ heroku login

Enter the next line to have Heroku create a virtual server for your new website

    $ heroku create

Now Heroku should have added a new git remote named `heroku` (you can see all of your remotes with `git remote`) so you should be able to run the following to deploy your website!

    $ git push heroku master

Next we have to tell Heroku to migrate the database so Rails has the database in place to talk to!

    $ heroku run rake db:migrate

If everything goes smoothly, you should now be able to see your website LIVE with the following command

    $ heroku open

*give yourself another pat on the back for being super awesome and getting this far*

# Rename your Heroku App

By default, when you enter `heroku create` you'll get a creative random name like cyber-fantasy5364, but that might not strike your fancy.

So, the solution is to rename your project, which Heroku makes quite simple with this command.

    $ heroku apps:rename newappname

Now lets test that the changes went through...

    $ heroku open

If the URL now displays the new app name you entered, then you're all set!

Need help? Email <jsealey762@gmail.com> or open an issue with specifics.

## Why is this open source?

It is intended to be a source of sample code for everyone to benefit from. You can make cool apps that use code from Salami.

Also, if you want to help out and fix some bugs or add new features, I'll really appreciate it. Maybe you'll even learn something :)

## Copyright

Copyright (c) 2013 Jared Sealey. See LICENSE for details.

## Contributing

If you want to fix bugs, just let me know and I'll assign it to you! If you want to add some features, I will probably merge it. I'm sure it will be awesome, but if there are issues I'll tell you what needs to be done before I will merge. If you're feeling like implementing a feature, check out the [issues](https://github.com/jsealey/Salami/issues) for things tagged with "feature".


## Give Back

If you want to give back in ways other than pull requests, you can [Gittip](https://www.gittip.com/jsealey/), or spread the word about Salami. Of course, pull requests are greatly appreciated.

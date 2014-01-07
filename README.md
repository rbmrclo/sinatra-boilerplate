# Sinatra Boilerplate

A great place to start with [Sinatra](http://www.sinatrarb.com/) and [Twitter Bootstrap](http://getbootstrap.com/) to build your simple awesome website. Easy to deploy on Heroku.

## What's included?
+ [Compass](http://compass-style.org/)
+ [CoffeeScript](http://coffeescript.org/)
+ [Haml](http://haml.info/)
+ Memcached
+ Livereload
+ Unicorn

## TL;DR

``` bash
$ git clone https://github.com/rbmrclo/sinatra-boilerplate.git
$ rm -r myapp/.git && rm myapp/README.md
```

## Use bundler to install gems
``` bash
$ bundle install
```

## Start the app

``` bash
$ shotgun
```

## Enable livereload

Run guard in another the terminal
``` bash
$ guard
```

## Deploy

````
heroku create appname
git push heroku master
````

## Enable caching for heroku

``` bash
$ heroku addons:add memcached
```

That's it.


##	Structure

###	`config/`
This folder is for your application config files. 

###	`static/vendor`
This folder is for assets that are owned by outside entities, such as code for JavaScript plugins and CSS frameworks.

###	`views/javascripts`
This folder is for your customized javascript files.

###	`views/stylesheets`
This folder is for your customized stylesheets.

### `Guardfile`
Configure this file if you will be using livereload.

### `Gemfile`
Ingredients for your sorcery :p


License
-------

(c) Robbie Marcelo | [MIT License](http://opensource.org/licenses/mit-license.php), do what you want.

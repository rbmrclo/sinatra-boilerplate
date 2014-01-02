# Sinatra Boilerplate

A great place to start with [Sinatra](http://www.sinatrarb.com/), [Twitter Bootstrap](http://getbootstrap.com/), [Compass](http://compass-style.org/), [CoffeeScript](http://coffeescript.org/) and [Haml](http://haml.info/) to build your awesome static website.

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

## Deploy

````
heroku create appname
git push heroku master
````

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


License
-------

(c) Robbie Marcelo | [MIT License](http://opensource.org/licenses/mit-license.php), do what you want.

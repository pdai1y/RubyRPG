RubyRPG
=========

RubyRPG is work in progress Rails/Javascript web game. Rails drives the JSON game server which will house most of the game logic, while JavaScript renders the game client itself. The client is built around the [Phaser] [1] game framework.

The core game logic is derived from **Dungeons and Dragons 3.5**

Many things are broken/missing, but will be fixed in later revisions.
Please see **TODO.md**.

####About The Game

RubyRPG was originally intended as a simple console based game written in pure Ruby. As the ideas grew and came into place, it was realized that pure Ruby would not be enough. By leveraging the great logic capabilites of Ruby and the speed of Javascript we are hoping to achieve something awesome.

The game itself will be a topdown RPG with planned procedural map generation. In its current state, the maps will have to be prefabricated in order to flesh out the RPG aspects.
####Planned Features

* Endless item generation
* Dniquely generated worlds per player
* Deep combat system
* Player submitted content (Races/Classes/Mobs)
* Player Ranking


Requirements
---
* Ruby 2.1.1
* Rails 4.1.1

Installation
--------------

```sh
git clone https://github.com/PDaily/RubyRPG.git rubyrpg
cd rubyrpg
bundle install
```

##### Configure databases for production, defaults to SQLite
#####*Only Tested with SQlite & Postgres
* config/database.yml

####Development
```
rake db:migrate
rails s
```
####Production
```
rake db:migrate
RAILS_ENV=production rake assets:precompile
rails s
```
###API
API files are located at: 
```
app/api/rubyrpg/
```
And is driven by [GrapeAPI] [2]

###APIDOCS
View realtime responses to API requests thanks to [Swagger] [3] at:
```
http://0.0.0.0:3000/apidcoc
```

###Client
Client files are located at:
```
app/assets/javascripts/rubyrpg/
```

The client is written in Javascript but allows embedded Ruby code to be executed upon compilation time and uses the file extension ```.js.erb```.

###Web Front
The front facing website is written in Rails and follows the typical MVC structure. It will allow for user registration/login and more. The web front comes bundled with a WIP admin section for managing users, players, races, etc in the database. 

It is driven by [Rails Admin] [4] & can be located at:
```
http://0.0.0.0:3000/admin
```
If you are uncomfortable with ```/admin``` being the default feel free to change ```config/routes.rb``` to whatever you may like.
Version
----

0.1 Initial release to GitHub for project tracking.

License
----

MIT

Contributing
---
As this is a project hosted on an open platform, any pull requests or forks are more than welcome!

[1]:https://github.com/photonstorm/phaser
[2]:https://github.com/intridea/grape
[3]:https://github.com/tim-vandecasteele/grape-swagger
[4]:https://github.com/sferik/rails_admnin
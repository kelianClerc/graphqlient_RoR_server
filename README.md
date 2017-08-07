# README

To setup this server :

Be sure that you are running a PostgresQL database named `todo_development` 
If not do in terminal:
```
psql
CREATE DATABASE todo_development;
```


Install all gems by running :

```
bundle install
```

Create database by running :
```
rails db:migrate
```

Generate database content by using :
```
rails db:seed
```

Run the server by using :
```
rails server -b 127.0.0.1 -p 3000 
```

You can now access your API. For instance :
[http://localhost:3000/users](http://localhost:3000/users)

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Commands used to generate the schema 
- first i generate the nessarry models using these commands
'''
rails g model User name:string
rails g model Exchange name:string amount:integer user:references:index
rails g model Group name:string icon:text user:references:index
rails g model GroupExchangeRelation group:references:index exchange:references:index

'''
- secondly i updated the `user_id` inside groups and exchanges `author_id` by running this command ` rails g migration ChangeForeignKeyForGroupAndExchange` and edit the generated rb file by appending these lines of codes inside change method 
```
    rename_column :groups, :user_id, :author_id
    rename_column :exchanges, :user_id, :author_id 
``` 
and here is the screen shoot of the ERD
![image](https://user-images.githubusercontent.com/22921170/228896608-795798d5-bf75-4f10-8d80-b9ca71a30a18.png)


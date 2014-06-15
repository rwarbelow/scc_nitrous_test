# The three lines below tell this file (app.rb) what other files it needs to reference to run properly.
require 'sinatra'
require 'data_mapper'
require './environments'



# Create a model for your database. What properties should the object have?
class Contact
	include DataMapper::Resource
	property :id, Serial
  property :name, String, :required => true
  property :email, String
  property :comment, Text
end
DataMapper.finalize.auto_upgrade!



# Create a 'get' route for the root page
get '/' do
end






# Create a 'post' route that enters the form data into the database.
# Make sure this route has an if/else statement that checks whether or not the 
# form data saves.



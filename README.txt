Noteboard Engine

The engine inherits from the host app Application Controller and thus depends on a host app for testing and use.
There needs to a be a User class within the host app because the engine uses the User ID to display a username
instead of poster_id and a link to the home page. The User class is also used in the Note validation to make 
sure the poster_id is a real user. The Noteboard itself has an association with the User class.

There is also a method myRenderer in the host app application controller that the engine uses to handle json.
The engine inherits its layout from the host app.

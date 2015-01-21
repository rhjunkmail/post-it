# Post-it

This app will list blog posts which we can CRUD

## Steps for creating a resource:


1. Define Routes
-In config/routes make routes available
-Run rake routes in the Terminal to confirm

2. Generate a controller
- 'rails generate controller :posts:'

3. Define "action"
- This happens by default if you pass an action name as a final argument to the generator.
-This renders a view of the same name by default.

4. Write view code
-This will be your html

## flash
Rails gives us a convenient way to notify users about requests through the "flash" hash. It's just a hash available to the views and controllers:
```
	flash = {}
```
... that's all

to use it use it like any other hash:
```ruby
	flash[:success] 	= "Woop!"
	flash[:error] 		= "oops!"

	#=>	{

		:success 		=> "Woop!"
		:error 			=> "oops!"
	}



```
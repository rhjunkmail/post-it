# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#posts = Post.create(
Post.create(

	[ # beginning of the array
		{ # beginning of the first Hash

			:title=> "How to use active record",
			:body=> "By defining a model called Post, we havve both a table called posts and an ActiveRecord class available for inputting and retrieving values to and from the DB" 
		
		},
		{ # beginning of the second hash
			title: "How to use DB seeds",
			body: "Use ActiveRecord in the db seeds file and run 'rake db/seeds' to populate the rows in the correspondingtable with the data described in the seeds file" 
		}
	]
)

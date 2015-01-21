class Post < ActiveRecord::Base # this active record file lets us interactive with db
# This Post model is a class
# A post instance is an object representing 
# our DB table called posts.
# It has attributes called title, body, etc
# corresponding to the columns of our table

validates :title, presence: true, uniqueness: true
validates :body, length: {minimum: 50}



end

class PostsController < ApplicationController
#	before_action :find_post, 	{
#									only: [
#										:show,
#										:edit,
#										:update,
#										:destroy
#									]
#								}
# or
#
#	before_action :find_post, except: [:index, :new, :create]
# or
	before_action :find_post, only: [:edit, :show, :update, :destroy]

def index
#  	coffee = "Hello World"
#  	coffee.class
#  	@posts = [
#  		"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
# 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
# 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
# 	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
# 	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
# 	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# 	"post 2",
# 	"post 3",
# 	"post 4",
# 	"post 5",
# 	"post 6",
# 	"post 7"
# ]
@posts = Post.all
# @posts = [#<Active record objects>
			#<Active record objects>
			#]


end

def show
#  	@posts = [
#  		"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
# 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
# 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
# 	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
# 	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
# 	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# 	"post 2",
# 	"post 3",
# 	"post 4",
# 	"post 5",
# 	"post 6",
# 	"post 7"
# ]	
	# replace by before action	
	# @post = Post.find(params["id"])
	# @post = #<Active record objects> <-- Used the ID from the URL to "find" the row
#@post = @posts[params["id"].to_i] 
end
	
def new # this needs a view for submitting data
	# The @post var represents a fresh, new, empty post object
	@post = Post.new
end
# these 2 are linked
def edit # this needs a view for typing data
	# replaced by before action
	# @post = Post.find(params["id"])
end

def create # no view needed
	# need to save form data to db
	@post = Post.new(post_params)

	if @post.save
		flash[:success] = "Successfully created a post"
		redirect_to posts_path
	else #otherwise...
		# give us back the form
		flash[:error] = "Oops, something went wrong, please try again."
		render :new
	end
end
# these 2 are linked
def update # no view needed; for submitting data
	# Save an instance of "Post" (containing data from that row) to local var "post"
	# replaced by before action
	# @post = Post.find(params["id"])

	# Call '.update' on local var "post" to updatethe contents of that row
	if @post.update(post_params)
		flash[:success] = "Successfully updated '#{@post.title}'."

		redirect_to post_path(@post)
	else
		flash[:error] = "Oops, something went wrong, please try again."
		render :edit
	end
end

def destroy
	# replaced by before action
	# @post=Post.find(params["id"])
	@post.destroy
	flash[:success] = "'#{@post.title}' was deleted."

	@post = nil
	redirect_to root_path
end

private

def post_params
	params.require(:post).permit( :title, :body)
end

def find_post
	@post = Post.find(params["id"])
end

end

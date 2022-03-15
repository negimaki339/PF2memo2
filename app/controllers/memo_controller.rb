class MemoController < ApplicationController

 def index
  @posts = Post.all
 end

 def new
 end

 def create
   Post.create(post_params)
   redirect_to root_path
 end

 def edit
   @post = Post.find(params[:id])
 end

 def update
   post = Post.find(params[:id])
   post.update(post_params)
   redirect_to root_path
 end

private
def post_params
　params.permit(:content)
end
end

class MemoController < ApplicationController
 before_action :set_post, only: [:edit, :update, :destroy]
 

 def index
  @posts = Post.all
 end

 def new
 end

 def create
   @post = Post.create(post_params)
   if @post.save
     flash[:notice] = "投稿できました"
     redirect_to root_path
   else
     flash[:alert] = "文字を入力してください"
     redirect_to new_memo_path
   end
 end

 def update
   post = Post.find(params[:id])
   post.update(post_params)
   redirect_to root_path
 end
 def destroy
   post = Post.find(params[:id])
   post.destroy
   redirect_to root_path
 end

private
def set_post
   @post = Post.find(params[:id])
end
 
def post_params
　params.permit(:content)
end
end

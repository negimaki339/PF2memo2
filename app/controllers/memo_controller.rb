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
   if @post.update(post_params)
     flash[:notice] = "投稿できました"
     redirect_to root_path
   else
     flash[:alert] = "文字を入力してください"
     redirect_to edit_memo_path(@post.id)
   end
 end
 def destroy
   if @post.destroy
     flash[:delete] = "削除しました"
     redirect_to root_path
   else
     redirect_to root_path
   end
 end
private
def set_post
   @post = Post.find(params[:id])
end
 
def post_params
　params.permit(:content)
end
end

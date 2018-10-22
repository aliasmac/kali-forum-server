class Api::V1::PostsController < ApplicationController
  
  def index 
    @posts = Post.all 
    render json: @posts
  end 

  def new
    @post = Post.new 
  end

  def create
    @post = Post.new(title: params[:title] , content: params[:content], media_element: params[:media_element], user_id: params[:user_id])
    if @post.save 
      render json: @post
    else
      render json: {error: "Post could not be created!"}, status: 400
    end
  end

  def show 
    @post = Post.find_by(id: params[:id])
    if @post
      render json: @post
    else 
      render json: {error: "post not found"}, status: 404
    end
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(params)
      render json: @post 
    else 
      render json: {error: "post not found"}, status: 404
    end 
  end

  def edit
    @post = Post.find_by(id: params[:id])
    render json: @post
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy 
    render json: @posts 
  end

  private 

  def post_params 
    params.require(:post).permit(:title, :content, :media_element, :user_id)
  end
  
end

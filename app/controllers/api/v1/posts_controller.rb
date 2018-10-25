class Api::V1::PostsController < ApplicationController
  
  def index 
    # @pi_names = PiName.all(:order => 'pi_names.last_name DESC')
    @posts = Post.order(id: :asc)
    render json: @posts
  end 

  # def new
  #   @post = Post.new 
  # end

  def create
    @post = Post.new(title: params[:title] , content: params[:content], media_element: params[:media_element], author_id: params[:author_id], score: params[:score])
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
    if @post.update(post_params)
      render json: @post
    else 
      render json: {error: "post not found"}, status: 404
    end 
  end

  # def edit
  #   @post = Post.find_by(id: params[:id])
  #   render json: @post
  # end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy 
    render json: @posts 
  end

  private 

  def post_params 
    params.require(:post).permit(:id, :title, :content, :media_element, :author_id, :score)
  end
  
end

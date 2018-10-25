class Api::V1::CommentsController < ApplicationController
  
  def index 
    @comments = Comment.all 
    render json: @comments
  end 

  # def new
  #   @comment = Comment.new 
  # end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save 
      render json: @comment
    else
      render json: {error: "comment could not be created!"}, status: 400
    end
  end

  def show 
    @comment = Comment.find_by(id: params[:id])
    if @comment
      render json: @comment
    else 
      render json: {error: "comment not found"}, status: 404
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    if @comment.update(params)
      render json: @comment 
    else 
      render json: {error: "comment not found"}, status: 404
    end 
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
    render json: @comment
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy 
    render json: @comments 
  end

  private 

  def comment_params 
    params.require(:comment).permit(:post_id, :user_id, :content)
  end


end

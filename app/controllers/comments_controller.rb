class CommentsController < ApplicationController
  before_action :set_post, only: [:create, :update, :destroy]
  before_action :set_comment, only: [:update, :destroy]
  before_action :authenticate_user!, only: [:update, :destroy]

  # POST /comments
  # POST /comments.json
  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user if current_user

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully posted.'
    else
      render "posts/show"
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@post), notice: 'Comment was successfully updated.'
    else
      render "posts/show"
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post), notice: 'Comment was successfully deleted.'
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = @post.comments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :name, :email)
    end
end

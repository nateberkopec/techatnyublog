class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params.require(:comment).permit(:body, :post_id))

    redirect_to @comment.post
  end
end

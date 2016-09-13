class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)

    @comment.save
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :rating, :user_id, :book_id)
  end
end

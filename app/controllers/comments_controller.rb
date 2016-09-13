class CommentsController < ApplicationController
  before_action :authenticate_user!

  helper_method :book

  def create
    @comment = book.comments.create(comment_params.merge(user: current_user))

    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :rating, :user_id)
  end

  def book
    @book ||= Book.find(params[:book_id])
  end
end

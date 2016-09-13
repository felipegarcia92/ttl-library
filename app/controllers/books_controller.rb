class BooksController < ApplicationController
  before_action :authenticate_user!

  helper_method :book

  def index
    @books = Book.all
  end

  def show
    @new_request = current_user.requests.new
  end

  private

  def book
    @book ||= Book.find(params[:id])
  end
end

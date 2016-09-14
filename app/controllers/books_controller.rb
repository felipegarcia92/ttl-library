class BooksController < ApplicationController
  before_action :authenticate_user!

  helper_method :book

  def index
    @books = Book.all
  end

  def show
  end

  private

  def book
    @book ||= Book.find(params[:id])
  end
end

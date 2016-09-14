class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @request = book.requests.create(
                request_params.merge(user: current_user, status: 'pending'))

    redirect_to :back
  end

  private

  def request_params
    params.require(:request).permit(:request_date)
  end

  def book
    @book ||= Book.find(params[:book_id])
  end
end

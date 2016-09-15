class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @request = book.requests.create(request_params.merge(user: current_user))

    flash[:save_error] =
      @request.errors.empty? ? nil : 'Error creating request, please try again'

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

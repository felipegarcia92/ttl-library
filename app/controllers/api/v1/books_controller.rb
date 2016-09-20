class Api::V1::BooksController < Api::V1::BaseController
  def index
    books = Book.all
    render(json: books.to_json)
  end
end

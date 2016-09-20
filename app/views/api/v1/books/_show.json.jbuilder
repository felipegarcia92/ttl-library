json.extract! book, :id, :title, :isbn, :year, :image, :created_at

json.author do
  json.id book.author.id
  json.first_name book.author.first_name
  json.last_name book.author.last_name
end

json.comments do
  json.array! book.comments, partial: 'api/v1/comments/show', as: :comment
end

json.requests do
  json.array! book.requests, partial: 'api/v1/requests/show', as: :request
end

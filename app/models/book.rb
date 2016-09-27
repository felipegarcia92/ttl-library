class Book < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  has_many :requests

  ratyrate_rateable 'book_rating'

  mount_uploader :image, BookImageUploader
end

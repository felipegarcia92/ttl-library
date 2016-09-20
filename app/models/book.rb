class Book < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  has_many :requests

  mount_uploader :image, BookImageUploader
end

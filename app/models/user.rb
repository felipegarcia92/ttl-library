class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :requests

  def requested_book?(book)
    self.active_book_requests.exists?(book_id: book.id)
  end

  def active_book_requests
    self.requests.pending
  end
end

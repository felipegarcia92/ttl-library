class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ratyrate_rater

  has_many :comments
  has_many :requests

  def requested?(book)
    pending_book_requests.exists?(book: book)
  end

  def to_s
    email
  end

  private

  def pending_book_requests
    requests.pending
  end
end

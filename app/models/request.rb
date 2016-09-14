class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  enum status:  [:pending, :accepted, :rejected]

  def has_passed?
    self.request_date < Date.today
  end
end

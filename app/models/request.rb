class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  before_create :default_status

  enum status:  [:pending, :accepted, :rejected]

  def passed?
    request_date < Date.today
  end

  private

  def default_status
    self.status ||= :pending
  end
end

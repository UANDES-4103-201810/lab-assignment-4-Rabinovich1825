class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets
  event = Event.where(id: event_id)

  validates :price, numericality: { :greater_than_or_equal_to => 0}
  validates :created_at, presence: true, date: { after:  event.pluck(:start_date)}


end

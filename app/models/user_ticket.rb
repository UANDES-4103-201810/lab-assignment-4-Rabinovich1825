class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :ticket

  event = Event.where(id: event_id)

  validates :created_at, presence: true, date: { after:  event.pluck(:start_date)}

end

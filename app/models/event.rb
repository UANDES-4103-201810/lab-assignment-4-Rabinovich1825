class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets

  validates :start_date, presence: true, date: { after:  :created_at}
  validates_uniqueness_of :start_date, scope: :place_id

end

class Flight < ApplicationRecord
  belongs_to :start_airport, class_name: 'Airport', foreign_key: 'start_id'
  belongs_to :end_airport, class_name: 'Airport', foreign_key: 'end_id'

  has_many :bookings
  #has_many :passengers, through: :bookings
end

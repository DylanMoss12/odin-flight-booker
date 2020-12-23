class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flights', foreign_key: 'start_id'
  has_many :incoming_flights, class_name: 'Flights', foreign_key: 'end_id'
end

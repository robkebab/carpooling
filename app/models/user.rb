class User < ApplicationRecord
    has_many :driver_relationships
    has_many :driver_trips, through: :driver_relationships, source: :trip
    has_many :passenger_relationships
    has_many :passenger_trips, through: :passenger_relationships, source: :trip
end

class User < ActiveRecord::Base
    has_many :bookings
  end
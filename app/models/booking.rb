class Booking < ApplicationRecord
  belongs_to :all_beer
  belongs_to :customer
end

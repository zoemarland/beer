class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :all_beer
  has_and_belongs_to_many :brewed_beers
end

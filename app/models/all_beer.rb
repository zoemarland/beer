class AllBeer < ApplicationRecord
  has_many :reservations
  def self.search(term)
    if term
      where('name LIKE ?',"%#{term}%")
    else
      all
    end
  end
end

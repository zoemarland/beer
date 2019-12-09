class Customer < ApplicationRecord
  validates :last_name, :first_name, :email_address, presence: true
end

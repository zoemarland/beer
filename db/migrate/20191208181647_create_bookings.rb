class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :all_beer, foreign_key: true
      t.references :customer, foreign_key: true
      t.integer :amount_of_people
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end

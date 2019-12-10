class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :customer, foreign_key: true
      t.references :all_beer, foreign_key: true

      t.timestamps
    end
  end
end

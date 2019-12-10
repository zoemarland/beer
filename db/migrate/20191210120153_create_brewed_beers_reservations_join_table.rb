class CreateBrewedBeersReservationsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :brewed_beers, :reservations do |t|
      # t.index [:brewed_beer_id, :reservation_id]
      # t.index [:reservation_id, :brewed_beer_id]
    end
  end
end

class CreateBrewedBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :brewed_beers do |t|
      t.string :name
      t.string :brand
      t.string :style
      t.references :all_beer, foreign_key: true

      t.timestamps
    end
  end
end

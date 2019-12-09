class AddBrewedByToBrewedBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :brewed_beers, :brewed_by, :string
  end
end

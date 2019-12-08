class CreateAllBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :all_beers do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :categories
      t.decimal :latitude
      t.decimal :longitude
      t.integer :postalCode
      t.string :province
      t.string :twitter
      t.string :websites

      t.timestamps
    end
  end
end

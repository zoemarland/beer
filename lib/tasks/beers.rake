require 'csv'
namespace :beers do
  desc "TODO"
  task seed_beers: :environment do

    AllBeer.destroy_all
    BrewedBeer.destroy_all

    #All breweries
    CSV.foreach("lib/assets/new_beer.csv", :headers=>true) do | row |
      puts row.inspect

      AllBeer.create!(
      name: row[10],
      city: row[3],
      address: row[1],
      categories: row[2],
      latitude: row[7].to_d,
      longitude: row[8].to_d,
      postalCode: row[11].to_i,
      province: row[12],
      twitter: row[13],
      websites: row[14]
      )
      end


  end

end

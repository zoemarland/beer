namespace :brewed_beers do
  desc "TODO"
  task seed_beers: :environment do

    #create Beers
    40.times do |index|
      BrewedBeer.create!(
        name: Faker::Beer.name,
        brand: Faker::Beer.brand,
        style: Faker::Beer.style,
        #brewed_by: all_beers.name,
      )
    end
    p "beers created"
  end

end

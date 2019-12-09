require 'csv'
namespace :beers do
  desc "TODO"
  task seed_beers: :environment do

    AllBeer.destroy_all
    BrewedBeer.destroy_all
    Address.destroy_all
    Customer.destroy_all

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

      #create Beers
      10.times do |index|
        BrewedBeer.create!(
          name: Faker::Beer.name,
          brand: Faker::Beer.brand,
          style: Faker::Beer.style
          )
      end
      p "beers created"

      #create Customers
    20.times do |index|
      Customer.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email_address: Faker::Internet.email
      )
    end
    p "customers created"

    #Address for each customer
    customers = Customer.all
    customers.each do | customer |
      Address.create!(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        postcode: Faker::Address.postcode,
        customer_id: customer.id
      )
    end
    p "Addresses created"



  end

end

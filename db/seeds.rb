# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "ffaker"

def drop_all_the_things
  puts 'DROP ALL THE THINGS!'
  [Product, Category, Customer].map(&:destroy_all)
end

def set_up_development_database
  200.times do |i| 
    products = Product.create(
      {
        name:         Faker::BaconIpsum.words.join(' '),
        description:  Faker::BaconIpsum.paragraph, 
        company:      Faker::Company.name,
        upc:          Faker::Identification.drivers_license, 
        price:        rand(5..278),
        website:      Faker::Internet.uri('http'),
      }
      )
  end
  
  30.times do |i| 
    customers = Customer.create(
      {
        name:           Faker::BaconIpsum.words.join(' '),
        last_name:      Faker::BaconIpsum.words.join(' '), 
        email:          Faker::Internet.email,
        contact_phone:  Faker::PhoneNumber.phone_number, 
        street:         Faker::Address.street_address,
        city:           Faker::Address.city,
        state:          Faker::AddressUS.state,
        zip:            Faker::AddressUS.zip_code,
      }
      )
  end

  @categories = ["Grocery", "Mens Apparel", "Womens Apparel", "Hardware", "Kitchen", "Automotive", "Garden"]


  25.times do |i|
    categories = Category.create(
        { name:        @categories.sample,
          description: Faker::BaconIpsum.paragraph,

        }
      )
  end

end

case Rails.env
when 'development'
  drop_all_the_things
  set_up_development_database
when 'production'
  #do nothing
end



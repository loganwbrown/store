namespace :report do
  desc "Counts the number of MODEL in the store"
  task counts: :environment do
   if ENV['MODEL'].present?
    model = ENV['MODEL'].capitalize.constantize
    count = model.count
    puts "We have a #{count} #{model.name.downcase.pluralize}"
   else
    puts "Must assign a mdoel with MODEL=something"
  end

  desc "Counts the number of products in the store"
  task product_count: :environment do 
    count = Product.count
    puts "We have #{count} products"
  end

  desc "Counts the number of customers that we have"
  task customer_count: :environment do
    count = Customer.count
    puts "We have #{count} customers"
  end

  desc "Counts the number off orders in the store"
  task orders: :environment do
    count = Order.count
    puts "We have #{count} orders."
  end
end
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
  end
end
namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_customers
  end
end

def make_customers
  350_000.times do |i|
  Customer.create!(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: "#{Faker::Internet.user_name}#{i}",
    email: "#{Faker::Internet.user_name}#{i}@#{Faker::Internet.domain_name}") 
  end
end


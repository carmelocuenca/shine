namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_customers
  end
end

def make_customers
  10_000.times do |i|
  Customer.where(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: "#{Faker::Internet.user_name}#{i}",
    email: "#{Faker::Internet.user_name}#{i}@#{Faker::Internet.domain_name}").first_or_create
  end
end


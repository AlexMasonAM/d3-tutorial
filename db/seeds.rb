# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

25.times do
  Truck.create(truck_name: Faker::App.name)
end

100.times do
  User.create(user_name: Faker::Internet.safe_email)
end

200.times do
  # Favorite.create(user_id: User.all.sample.id, truck_id: Truck.all.sample.id)
  user1 = User.all.sample
  truck1 = Truck.all.sample

  Favorite.create(user_id: user1.id, truck_id: truck1.id)
  user1.trucks << truck1
end
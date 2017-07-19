# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  11.times do |i|
    User.create!(
            id: i,
            name: Faker::Name.last_name,
            firstname: Faker::Name.first_name,
            age: Faker::Number.number(2),
    )
  end
  100.times do
    Action.create!(
              title: Faker::Lorem.sentence,
              user_id: (1..10).to_a.sample
    )
  end

  5000.times do
    Item.create!(
            name: Faker::Lorem.word,
            duration: Faker::Number.number(4),
            action_id: (1..100).to_a.sample
    )
  end
end
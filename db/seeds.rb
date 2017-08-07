# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  11.times do |i|
    User.create(
            id: i,
            name: Faker::Name.last_name,
            firstname: Faker::Name.first_name,
            age: Faker::Number.number(2),
            sister_name: Faker::Name.first_name,
            description: Faker::Lorem.paragraph,
            geo_enabled: Faker::Boolean.boolean,
            city: Faker::Address.city,
            gender: Faker::Demographic.sex,
            number_of_cars: Faker::Number.between(1,4),
            personal_car_brand: Faker::Vehicle.manufacture,
            number_of_cats: Faker::Number.between(1,12),
            favorite_cat_breed: Faker::Cat.breed,
            is_validated: Faker::Boolean.boolean,
            lang: Faker::Address.country_code,
            pseudo: Faker::Witcher.monster,
            notification_enabled: Faker::Boolean.boolean,
            user_picture: Faker::LoremPixel.image,
            user_background_image: Faker::LoremPixel.image,
            user_profile_url: Faker::Internet.url,
            favorite_color: Faker::Color.color_name,
            is_protected: Faker::Boolean.boolean,
            bank_name: Faker::Bank.name,
            bank_iban: Faker::Bank.swift_bic,
            bitcoin_address: Faker::Bitcoin.address,
            favorite_book: Faker::Book.title,
            favorite_author: Faker::Book.author,
            favorite_icecream_flavor: Faker::Dessert.flavor,
            secondary_school: Faker::Educator.secondary_school,
            favorite_dish: Faker::Food.dish,
            height: Faker::Measurement.metric_height,
            weight: Faker::Measurement.metric_weight,
            playing_instrument: Faker::Music.instrument,
            favorite_pokemon: Faker::Pokemon.name,
            phone_number: Faker::PhoneNumber.phone_number
    )
  end
  100.times do |i|
    Action.create(
              id: i,
              title: Faker::Lorem.sentence,
              user_id: (1..10).to_a.sample,
              price: Faker::Number.number(2),
              version: Faker::App.version,
              fat_percent: Faker::Beer.alcohol,
              origin: Faker::Address.country,
              isVegan: Faker::Boolean.boolean,
              code: Faker::Code.imei,
              picture: Faker::LoremPixel.image,
              detail_picture: Faker::LoremPixel.image,
              skill_needed: Faker::Job.key_skill,
              requires_oven: Faker::Boolean.boolean
    )
  end

  5000.times do |i|
    Item.create(
            id: i,
            name: Faker::Lorem.word,
            duration: Faker::Number.number(4),
            action_id: (1..100).to_a.sample
    )
  end
end
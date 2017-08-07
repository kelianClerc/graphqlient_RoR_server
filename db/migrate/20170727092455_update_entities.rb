class UpdateEntities < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :sister_name
      t.string :description
      t.boolean :geo_enabled
      t.string :city
      t.string :gender
      t.integer :number_of_cars
      t.string :personal_car_brand
      t.integer :number_of_cats
      t.string :favorite_cat_breed
      t.boolean :is_validated
      t.string :lang
      t.string :pseudo
      t.boolean :notification_enabled
      t.string :user_picture
      t.string :user_background_image
      t.string :user_profile_url
      t.string :favorite_color
      t.boolean :is_protected
      t.string :bank_name
      t.string :bank_iban
      t.string :bitcoin_address
      t.string :favorite_book
      t.string :favorite_author
      t.string :favorite_icecream_flavor
      t.string :secondary_school
      t.string :favorite_dish
      t.string :height
      t.string :weight
      t.string :playing_instrument
      t.string :favorite_pokemon
      t.string :phone_number
    end

    change_table :actions do |t|
      t.integer :price
      t.string :version
      t.string :fat_percent
      t.string :origin
      t.boolean :isVegan
      t.boolean :code
      t.string :picture
      t.string :detail_picture
      t.string :skill_needed
      t.boolean :requires_oven
    end
  end
end

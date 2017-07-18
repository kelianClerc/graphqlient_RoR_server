class Action < ApplicationRecord
  belongs_to :user
  has_many :items
end

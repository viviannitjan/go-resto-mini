class Food < ApplicationRecord
  validates :name, length: { minimum: 2 }
  validates :description, length: { maximum: 500 }
  validates :price, presence: true
end

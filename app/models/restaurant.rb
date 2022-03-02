class Restaurant < ApplicationRecord
  FOOD = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: FOOD}
  # validates :phone_number
end

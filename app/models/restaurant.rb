class Restaurant < ApplicationRecord
  FOOD = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: FOOD}
  has_many :reviews, dependent: :destroy
end

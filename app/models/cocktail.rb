class Cocktail < ApplicationRecord
  has_many :dose, dependent: :destroy
  has_many :ingredient, :through => 'dose'

  validates :name, presence: true, uniqueness: true
end

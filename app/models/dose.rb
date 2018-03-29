class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :ingredient, presence: true
  validates :cocktail, presence: true
  validates_uniqueness_of [:cocktail, :ingredient]
end

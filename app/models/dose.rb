class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validate :description, presence: true
  validate :ingredient, presence: true
  validate :cocktail, presence: true
  validates_uniqueness_of :cocktail, :ingredient
end

class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # A dose must have a description, a cocktail and an ingredient,
  validates :description, presence: true
  # and [cocktail, ingredient] pairings should be unique.
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
end

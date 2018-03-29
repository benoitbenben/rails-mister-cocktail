class Dose < ApplicationRecord
  belongs_to :cocktail
  has_many :ingredient
end

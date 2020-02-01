class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end

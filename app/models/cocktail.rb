class Cocktail < ApplicationRecord
# confirm reasoning is sound regarding these relationships:
  has_many :doses
  has_many :ingredients, through: :doses

  validates: name, presence: true, uniqueness: true
end

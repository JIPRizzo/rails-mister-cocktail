class Ingredient < ApplicationRecord
# confirm reasoning is sound regarding these relationships:

  has_many :doses

  validates :name, presence: true, uniqueness: true

end

class Power < ApplicationRecord
  has_many :heroe_powers
  has_many :heroes, through: :heroe_powers
    validates :description, {
        length: {minimum: 20},
        presence: true
      }
end

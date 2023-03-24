class Heroe < ApplicationRecord
    has_many :heroe_powers
    has_many :powers, through: :heroe_powers
end

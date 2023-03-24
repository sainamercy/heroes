class HeroePower < ApplicationRecord
  enum [:Weak, :Average, :Strong]
  belongs_to :power
  belongs_to :heroe
end

class HeroePowerSerializer < ActiveModel::Serializer
  attributes :id, :strength
  belongs_to :power
  belongs_to :heroe
end

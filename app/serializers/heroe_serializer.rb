class HeroeSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name
  has_many :powers
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :colors

  has_many :patterns
end

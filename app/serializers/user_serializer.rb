class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :token, :bio, :avatar, :website, :location, :privacy

  has_many :posts
  has_many :comments
  has_many :likes
  has_many :followers

end

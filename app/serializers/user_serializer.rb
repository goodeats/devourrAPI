class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :token, :bio, :avatar, :website, :location, :privacy

  has_many :posts
  has_many :comments

end

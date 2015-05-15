class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :picture, :reheats, :mades, :stashes, :location, :user_id, :user

  has_many :comments
  has_many :likes

end

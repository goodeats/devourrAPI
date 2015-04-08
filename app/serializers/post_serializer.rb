class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :picture, :likes, :reheats, :mades, :stashes, :location, :user_id, :user

  has_many :comments
end

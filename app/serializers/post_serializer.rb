class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :picture, :likes, :reheats, :mades, :stashes, :location

  has_many :comments
end

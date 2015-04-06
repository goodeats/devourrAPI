class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :picture, :likes
end

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :picture, :likes, :post_id, :user_id
end

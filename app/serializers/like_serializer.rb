class LikeSerializer < ActiveModel::Serializer
  attributes :id, :count, :post_id, :user_id, :user

end

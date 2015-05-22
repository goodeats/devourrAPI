class FollowSerializer < ActiveModel::Serializer
  attributes :id, :follow_user_id, :user_id, :user

end

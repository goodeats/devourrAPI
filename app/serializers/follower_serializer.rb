class FollowerSerializer < ActiveModel::Serializer
  attributes :id, :count, :user_id, :user

end

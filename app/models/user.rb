class User < ActiveRecord::Base

  has_many :posts
  has_many :comments

  validates :name, :username, :email, presence: true

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  enum privacy: [:global, :firends, :personal]

end

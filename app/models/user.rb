class User < ActiveRecord::Base

  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, :username, :email, presence: true

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  enum privacy: [:global, :friends, :personal]

  # NULL_ATTRS = %w( :bio, :avatar, :website, :location )
  # before_save :nil_if_blank

  ## authentication

  has_secure_password

  before_create :set_token

  private

  def set_token
    return if token.present?
    self.token = generate_token
  end

  def generate_token
    SecureRandom.uuid.gsub(/\-/,'')
  end

  # protected

  # def nil_if_blank
  #   NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  # end

end

class User < ActiveRecord::Base
  has_secure_password
  #mount_uploader :avatar, AvatarUploader
  validates :username, presence: true
  validates :email, presence: true,
            format: /\A\S+@\S+\z/,
            uniqueness: { case_sensitive: false }
end

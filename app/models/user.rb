class User < ActiveRecord::Base
  include BCrypt
  
  has_one :profile
  has_one :resume
  has_one :company

  validates :email, presence: true
  validates :email, uniqueness: true

  before_save :encrypt_password

  def encrypt_password
    if self.password.present?
        self.salt = BCrypt::Engine.generate_salt
        self.password = BCrypt::Engine.hash_secret(self.password, self.salt)
      end
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password == BCrypt::Engine.hash_secret(password, user.salt)
      user
    else
      nil
    end
  end
end

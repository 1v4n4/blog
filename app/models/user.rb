class User < ApplicationRecord
  has_secure_password
  has_many :post
  validates :username, presence: true, length: { minimum: 4, maximum: 15}
  validates :mail, presence: true
  validates_uniqueness_of :mail
  validates :password, presence: true, length: { minimum: 6, maximum: 15} 
  
end

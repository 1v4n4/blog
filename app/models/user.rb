class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 15}
  validates :mail, presence: true
  validates :password, presence: true, length: { minimum: 6, maximum: 15} 
  
 
end

# - User Model
#   - Database migrations
#   - The model file
#   - Creating user objects
#   - Finding user objects
#   - Updating user objects
# - User validations
# - Updating user objects

class User < ApplicationRecord
  validates_presence_of :name
  validates_length_of :name, minimum: 5
  validates :email, presence: true
  has_secure_password
end

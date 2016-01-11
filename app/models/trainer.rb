class Trainer < ActiveRecord::Base
  has_secure_password
  has_many :pocketmonsters
  validates :name, :username, presence: true
  validates :username, uniqueness: { case_sensitive: true }
end
